//
//  Utilities.swift
//  Pulimart
//
//  Created by anuroop on 30/10/18.
//  Copyright © 2018 Alisons Infomatics. All rights reserved.
//

import Foundation
import UIKit
import NYAlertViewController

//MARK:- ALERTS
func makeAlert( title : String, message : String, okBtnTitle : String, cancelBtnTitle : String, okAction okActionHere : @escaping () -> Void , cancelAction cancelActionHere : @escaping () -> Void , presenting : UIViewController ){
    
    
    let alertViewController = NYAlertViewController()
    
    // Set a title and message
    alertViewController.title = title
    alertViewController.message = message
    
    // Customize appearance as desired
    alertViewController.view.tintColor = presenting.view.tintColor
    alertViewController.view.superview?.alpha = 0.3
    alertViewController.cancelButtonColor = Colors.blue
    
    alertViewController.titleFont = UIFont(name: fonts.FONT_BOLD, size: 19.0)
    alertViewController.messageFont = UIFont(name: fonts.FONT_MEDIUM, size: 16.0)
    alertViewController.cancelButtonTitleFont = UIFont(name: fonts.FONT_MEDIUM, size: 16.0)
    alertViewController.cancelButtonTitleFont = UIFont(name: fonts.FONT_MEDIUM, size: 16.0)
    
    alertViewController.swipeDismissalGestureEnabled = true
    alertViewController.backgroundTapDismissalGestureEnabled = true
    
    
    // Add alert actions
    
    if cancelBtnTitle != ""{
        let cancelAction = NYAlertAction(
            title: NSLocalizedString(cancelBtnTitle, comment: ""),
            style: .cancel,
            handler: { (action: NYAlertAction!) -> Void in
                
                presenting.dismiss(animated: true, completion: nil)
                cancelActionHere()
                
        })
        alertViewController.addAction(cancelAction)
    }
    
    
    let okAction = NYAlertAction(
        title: NSLocalizedString(okBtnTitle, comment: ""),
        style: .cancel,
        handler: { (action: NYAlertAction!) -> Void in
            
            presenting.dismiss(animated: true, completion: nil)
            okActionHere()
            
            
    })
    
    alertViewController.addAction(okAction)
    
    // Present the alert view controller
    presenting.present(alertViewController, animated: true, completion: nil)
    
}

func makeAlert( title : String, message : String, okBtnTitle : String, okAction okActionHere : @escaping () -> Void , presenting : UIViewController ){
    
    makeAlert(title: title, message: message, okBtnTitle: okBtnTitle, cancelBtnTitle: "", okAction: {
        okActionHere()
    }, cancelAction: { }, presenting: presenting)
    
}

func makeAlert(title : String, message : String,presenting : UIViewController){

    makeAlert(title: title, message: message, okBtnTitle: "Done", okAction: {}, presenting: presenting)

}

func noNetworkAlert(presenting:UIViewController){

    makeAlert(title: "Oops", message: "Internet connection not available!", okBtnTitle: "Retry", okAction: {
        
        presenting.viewWillAppear(false)
        presenting.viewDidLoad()
        presenting.viewDidAppear(false)
        
    }, presenting: presenting)

}



//MARK:- FORMATTING STRING
func formatDate(dateString:String) -> String {

    if dateString != "null" || dateString != "<null>" || dateString != ""{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = dateFormatter.date(from: dateString)
        dateFormatter.dateFormat = "dd MMMM yyyy"
        return  dateFormatter.string(from: date!)

    }else{
        return ""
    }
}

