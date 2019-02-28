//
//  ApiCall.swift
//  Clinic App
//
//  Created by Anuroop Kanayil on 06/11/18.
//  Copyright © 2018 Alisons Mac. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import NYAlertViewController


func getResponseFromServer(url:String,params: [String: Any],vc:UIViewController ,onSuccess success: @escaping (_ responseDict : NSDictionary) -> Void, onFailure failure: @escaping (_ error: Error?, _ response: DataResponse<Any>) -> Void) {
    
    let progressHUD = ProgressHUD(text: "")
    vc.view.addSubview(progressHUD)
    
    //check internet connection
    guard Reachability.isConnectedToNetwork() else {
        progressHUD.hide()
        noNetworkAlert(presenting: vc)
        return
    }

    
    var method = HTTPMethod(rawValue: "")
    if ((params as NSDictionary) == [:]){
        method = HTTPMethod.get
    }else{
        method = HTTPMethod.post
    }
    
    //400 - bad requset 
    //401 - unauthorised
    //500 - internal server error
    //200 - ellam sheriyaanu
    
    let headers = [
        "Authorization": "Info XXX",
        "Accept": "application/json",
        "Content-Type" :"application/json"
    ]
    
    
    Alamofire.request(url, method: method ?? .post, parameters: params,encoding: JSONEncoding.default, headers: headers).responseJSON {
        response in
        //print(response)

        print("\(String(describing: response.response?.statusCode))")

        switch response.result {
        case .success:
            if let responseDict:NSDictionary =  response.value as! NSDictionary?
            {
                
                let status = "\(responseDict.value(forKey: "success")!)"
                if status == "2"{//invalid tocken

                }else{
                    success(responseDict)
                }
                
                progressHUD.hide()
            }

            break
            case .failure(let error):

            progressHUD.hide()
            makeAlert(title: "Oops", message: "Failed", presenting: vc)
            failure(error, response)
        }
    }
}


class ProgressHUD: UIVisualEffectView {
    
    var text: String? {
        didSet {
            label.text = text
        }
    }
    
    let activityIndictor: UIActivityIndicatorView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
    let label: UILabel = UILabel()
    let blurEffect = UIBlurEffect(style: .light)
    let vibrancyView: UIVisualEffectView
    
    init(text: String) {
        self.text = text
        self.vibrancyView = UIVisualEffectView(effect: UIVibrancyEffect(blurEffect: blurEffect))
        super.init(effect: blurEffect)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.text = ""
        self.vibrancyView = UIVisualEffectView(effect: UIVibrancyEffect(blurEffect: blurEffect))
        super.init(coder: aDecoder)
        self.setup()
    }
    
    func setup() {
        contentView.addSubview(vibrancyView)
        contentView.addSubview(activityIndictor)
        contentView.addSubview(label)
        activityIndictor.startAnimating()
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        if let superview = self.superview {
            
            var width = CGFloat()
            
            if text == ""{
                width = 50
            }else{
                width = superview.frame.size.width / 2.3
            }
            
            //let width = superview.frame.size.width / 2.3
            let height: CGFloat = 50.0
            self.frame = CGRect(x: superview.frame.size.width / 2 - width / 2,
                                y: superview.frame.height / 2 - height / 2,
                                width: width,
                                height: height)
            vibrancyView.frame = self.bounds
            
            let activityIndicatorSize: CGFloat = 40
            activityIndictor.frame = CGRect(x: 5,
                                            y: height / 2 - activityIndicatorSize / 2,
                                            width: activityIndicatorSize,
                                            height: activityIndicatorSize)
            
            layer.cornerRadius = 8.0
            layer.masksToBounds = true
            label.text = text
            label.textAlignment = NSTextAlignment.center
            label.frame = CGRect(x: activityIndicatorSize + 5,
                                 y: 0,
                                 width: width - activityIndicatorSize - 15,
                                 height: height)
            label.textColor = UIColor.gray
            label.font = UIFont.boldSystemFont(ofSize: 16)
        }
    }
    
    func show() {
        self.isHidden = false
    }
    
    func hide() {
        self.isHidden = true
    }
}
