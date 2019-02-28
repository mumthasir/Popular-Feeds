//
//  Constants.swift
//  Pulimart
//
//  Created by anuroop on 02/11/18.
//  Copyright © 2018 Alisons Infomatics. All rights reserved.
//

import Foundation
import UIKit


struct Colors {
    static let blue = UIColor(red: 29/255 , green: 71/255 ,blue: 105/255 , alpha: 1.0)
    static let black = UIColor(red: 33/255 , green: 33/255 ,blue: 33/255 , alpha: 1.0)
    static let green = UIColor(red: 0/255 , green: 113/255 ,blue: 0/255 , alpha: 1.0)
    
    static let textColorGray = UIColor(red: 51/255 , green: 51/255 ,blue: 51/255 , alpha: 0.8)
    
    static let bgColorLighGray = UIColor(red: 51/246 , green: 51/244 ,blue: 51/245 , alpha: 0.8)
}

struct api {
    
    //base
    static let baseUrl                  = "http://pulimart.com/pulimart/public/"//"http://pulimart.client.alisonsinfomatics.com/"//
    static let parentUrl                = baseUrl + "api/"
   
    //image
    static let productThumbImageUrl     = baseUrl + "images/product/thumbnail/"
    static let productImagUrl           = baseUrl + "images/product/"
    static let idCardImagUrl            = baseUrl + "images/idcard/"
    static let categoryThumbImageUrl    = baseUrl + "images/category/thumbnail/"
    static let brandThumbImageUrl       = baseUrl + "images/manufacturer/thumbnail/"
    static let bannerImageUrl           = baseUrl + "images/banner/"
    static let sellerImageUrl           = baseUrl + "images/store/"
    static let offerImageUrl            = baseUrl + "images/offer/"
    
    //login
    static let loginUrl                 = "login/en"
    static let logoutUrl                = "logout/en"
    static let signup                   = parentUrl + "register/en"
    static let guestLoginUrl            = parentUrl + "guest-login/en"
    static let sendOtpUrl               = "send-otp/en"
    static let verifyOtpUrl             = parentUrl + "verify-otp/en"
    static let forgotPasswdUrl          = parentUrl + "send-reset-password-code/en"
    static let verifyEmailUrl           = parentUrl + "verify-email/en"
    static let changePasswordUrl        = parentUrl + "change-password/en"
    static let sendEmailVerification    = parentUrl + "send-email-verification/en"
    static let changeEmail              = parentUrl + "change-email/en"
    static let resetPassword            = parentUrl + "reset-password/en"
    
    //home
    static let getHome                  = parentUrl + "home/en"
    static let sendFeedback             = parentUrl + "submit-feedback/en"
    static let getNotificationList      = parentUrl + "notifications/en"
    static let clearNotification        = parentUrl + "clear-notifications"
    
    //product
    static let getCategories            = parentUrl + "categories/en"
    static let getProductsList          = parentUrl + "products/en"
    static let getCountriesList         = parentUrl + "countries/en"
    static let getProductDetails        = parentUrl + "product/en/"
    static let AddToCart                = parentUrl + "cart/add/en"
    static let getFilterOptions         = parentUrl + "filters/en"
    static let search                   = parentUrl + "search-products/en"
    static let getReviews               = parentUrl + "product-reviews/"
    static let addReview                = parentUrl + "add-product-review/"
    
    //cart
    static let getCartItems             = parentUrl + "cart/en"
    static let moveToWishlist           = parentUrl + "cart/move/en"
    static let moveToCart               = parentUrl + "wishlist/move/en"
    static let getWishList              = parentUrl + "wishlist/en"
    static let AddOrDeleteWishList      = parentUrl + "wishlist/add/en"
    static let listCoupons              = parentUrl + "cart/listcoupon/en"
    static let placeOrder               = parentUrl + "checkout/en"
    static let payment                  = parentUrl + "payment/en"
    static let paymentCallBack          = parentUrl + "paymentcallback/"
    
    //address
    static let addAddress               = parentUrl + "customer-addresses/add/en"
    static let addressList              = parentUrl + "customer-addresses/en"
    static let removeAddress            = parentUrl + "customer-addresses/delete/en"
    static let editAddress              = parentUrl + "customer-addresses/update/en"
    
    //order
    static let getOrdersList            = parentUrl + "my-orders/en"
    static let returnItem               = parentUrl + "return-item/en"
    static let cancelOrder              = parentUrl + "cancel-order/en"
    static let trackOrder               = parentUrl + "tracking/en"
    
    //profile
    static let myProfile                = parentUrl + "my-profile"
    static let hideRefferal             = parentUrl + "referral-hide"
    static let updateGender             = parentUrl + "update-gender"
    
    
    //reffer and earn
    static let getWallet                = parentUrl + "wallet/en"
    static let getRefferalHistory       = parentUrl + "referral/en"
    static let getRewardHistory         = parentUrl + "reward/en"
    static let refferalMoveToWallet     = parentUrl + "referral-move-to-wallet/en"
    static let rewardMoveToWallet       = parentUrl + "reward-move-to-wallet/en"
    static let refferalTransferToBank   = parentUrl + "referral-move-to-bank/en"
    static let getRefferalDetails       = parentUrl + "referral-more/en"
    static let getRefferalCode          = parentUrl + "referral-url/en"
    
    //id card
    static let uploadIdCard             = parentUrl + "idcard/add/en"
    static let editIdCard               = parentUrl + "idcard/edit/en"
    static let deleteIdCard             = parentUrl + "idcard/delete/en"
    static let getIdCardList            = parentUrl + "idcard/en"
   
    
    
    
    
//    /customer-addresses/edit/en ,
//    /customer-addresses/update/en ,
//    /customer-addresses/delete/en"
    
    
//    public static final String APP_TAG = "PULIMART_TAG";
//    // public static final String MAIN_URL = "http://test.shoe-park.com/";
//    public static final String MAIN_URL = "http://pulimart.client.alisonsinfomatics.com/";
//    public static final String BASE_URL = MAIN_URL + "api/";
//    public static final String CATEGORY_URL = MAIN_URL + "images/category/thumbnail/";
//    public static final String PRODUCT_THUMB_URL = MAIN_URL + "images/product/thumbnail/";
//    public static final String PRODUCT_URL = MAIN_URL + "images/product/";
//    public static final String BANNER_URL = MAIN_URL + "images/banner/";
//    notification/small/imagename
//    public static final String NOTIFICATION_URL = MAIN_URL + "images/notification/small/";
//    public static final String NOTIFICATION_BIG_URL = MAIN_URL + "images/notification/";
//    public static final String BRAND_THUMB_URL = MAIN_URL + "images/manufacturer/thumbnail/";
//    public static final String[] languagesArray = new String[]{"en", "ar"};
//    public static final String DEFAULT_LANG = "en"
    
    
}

struct fonts {
    
    static let FONT_BOLD = "Roboto-Bold"
    static let FONT_MEDIUM = "Roboto-Medium"
    static let FONT_REGULAR = "Roboto-Regular"
    
}

struct keys {
    
    static let TOKEN = "TOKEN" as NSString
    static let CUSTOMER_ID = "CUSTOMER_ID" as NSString
    static let GUEST_ID = "GUEST_ID" 
    static let EMAIL = "EMAIL"
    static let PHONE = "PHONE"
    static let REFFERAL_CODE = "REFFERAL_CODE"
    
    
    static let CONSTANT_PLIST = "constant" as NSString // plist name
    
    static let PRICE_SYMBOL = "PRICE_SYMBOL"
    static let PRICE_RIGHT_SYMBOL = "PRICE_RIGHT_SYMBOL"
    static let PRICE_LEFT_SYMBOL = "PRICE_LEFT_SYMBOL"
    
    static let DELIVERY_ADDRESS = "DELIVERY_ADDRESS_ID" //delivery address id for use in cart , summery ,checkout
    static let BILLING_ADDRESS = "BILLING_ADDRESS_ID"
    static let ADDRESS_FROM_HOME = "ADDRESS_FROM_HOME"
    static let PINCODE = "PINCODE"
    
    static let COUPON_CODE = "COUPON_ID"
    
    static let SELECTED_FILTER_ITEMS = "selectedFilterItems"
    static let RANGE_SLIDER_VALUE = "rangeSliderValue"
   
    static let DEVICE_TOKEN = "DEVICE_TOKEN"
    
    static let NOTIFICATION_DICT = "NOTIFICATION_DICT"
    
    static let CART_COUNT = "CART_COUNT"
    
    static let SELLER_SLUG = "SELLER_SLUG"
    
    static let ORDER_LIST_SHOULD_UPDATE = "ORDER_LIST_SHOULD_UPDATE"
    
    
    
}

struct constants {
    
    static let CART = "cart"
    static let SUMMARY = "summary"
    static let CHECKOUT = "checkout"
    
    static let WALLET = "WALLET"
    static let REWARD = "REWARD"
    
    static let OTP_MODE_REGISRATION = "register"
    static let OTP_MODE_CHANGE = "change"
    
    static let COD_ID = "4"
    static let FADE_ANIMATION_SPEED = 0.2
    
}

