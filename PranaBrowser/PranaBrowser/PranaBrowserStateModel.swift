//
//  PranaBrowserStateModel.swift
//  PranaBrowser
//
//  Created by Pranav on 29/05/22.
//

import Foundation

class PranaBrowserStateModel: ObservableObject {
    @Published var pageTitle:String = "https://github.com"
    @Published var goToPage:Bool    = false
    @Published var goBack:Bool      = false
    @Published var goForward:Bool   = false
}
