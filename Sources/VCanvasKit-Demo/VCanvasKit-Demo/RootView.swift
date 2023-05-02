//
//  ContentView.swift
//  VCanvasKit-Demo
//
//  Created by Victor Castro on 1/05/23.
//

import SwiftUI

struct RootView: View {
    
    @State private var versionApp = ""
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("AlertToast", destination: AlertToastView())
                NavigationLink("Avatar", destination: AvatarKitView())
            }
            .navigationTitle("VCanvas Kit")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Text("Ver \(versionApp)"))
            
        }
        .onAppear {
            getVersionApp()
        }
    }
    
    func getVersionApp() {
        guard let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") else { return }
        
        versionApp = "\(version)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
