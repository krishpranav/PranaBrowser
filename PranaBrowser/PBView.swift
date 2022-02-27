//
//  PBView.swift
//  PranaBrowser
//
//  Created by KrisnaPranav on 27/02/22.
//

import SwiftUI
import WebKit

struct PBView:UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    @ObservedObject var webViewStateModel: WebViewStateModel
    typealias UIViewType = WKWebView
    
    class Coordinator: NSObject, WKNavigationDelegate {
        let parent:PBView
        init(_parent:PBView) {
            self.parent = _parent
        }
        
        func makeUIView(context: Context) -> WKWebView {
            let view = WKWebView(frame: CGRect.zero)
            view.navigationDelegate = context.coordinator
            view.allowsBackForwardNavigationGestures = true
            view.scrollView.isScrollEnabled = true
        }
    }
}

struct PBView_Previews: PreviewProvider {
    static var previews: some View {
        PBView()
    }
}
