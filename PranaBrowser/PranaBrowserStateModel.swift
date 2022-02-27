//
//  PranaBrowserStateModel.swift
//  PranaBrowser
//
//  Created by KrisnaPranav on 27/02/22.
//

import Foundation

class WebViewStateModel: ObservableObject {
    @Published var pageTitle:String = "https://github.com"
    @Published var goToPage:Bool = false
    @Published var goBack:Bool = false
    @Published var goForward:Bool = false
}
