//
//  AlertToastView.swift
//  CanvasUIKit-Demo
//
//  Created by Victor Castro on 1/05/23.
//

import SwiftUI
import VCanvasKit

struct AlertToastView: View {
    
    @State private var showToast = false
    
    var body: some View {
        VStack {
            Button("AlertT") {
                showToast.toggle()
            }.buttonStyle(.bordered)
        }
        .navigationTitle("AlertToast")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toast(isPresenting: $showToast, duration: 2) {
            AlertToast(displayMode: .hud, type: .regular, title: "Message Sent!")
        }
    }
}

struct AlertToastView_Previews: PreviewProvider {
    static var previews: some View {
        AlertToastView()
    }
}
