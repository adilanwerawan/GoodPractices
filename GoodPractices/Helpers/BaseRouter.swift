//
//  BaseRouter.swift
//  GoodPractices
//
//  Created by MacBook on 22/04/2022.
//

import Foundation
import UIKit

protocol BaseRouter{
    func route(
        to routeId:String,
        from context:UIViewController,
        parameters:Any?
    )
}
