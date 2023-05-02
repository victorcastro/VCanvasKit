//
//  AlertToastView.swift
//  CanvasUIKit-Demo
//
//  Created by Victor Castro on 1/05/23.
//

import SwiftUI
import VCanvasKit

struct AlertToastView: View {
    
    @State private var hudRegular = false
    @State private var hudError = false
    @State private var hudComplete = false
    
    @State private var alertRegular = false
    @State private var alertLoading = false
    @State private var alertComplete = false
    @State private var alertError = false
    
    @State private var bannerSlideRegular = false
    @State private var bannerPopRegular = false
    @State private var bannerPopComplete = false
    @State private var bannerPopSystemImage = false
    
    var body: some View {
        VStack {
            VStack {
                Text("HUD").font(.system(.title))
                HStack {
                    Button("Regular") {
                        hudRegular.toggle()
                    }.buttonStyle(.bordered)
                    Button("Error") {
                        hudError.toggle()
                    }.buttonStyle(.bordered)
                    Button(" Complete") {
                        hudComplete.toggle()
                    }.buttonStyle(.bordered)
                }
            }
            
            VStack {
                Text("Alert").font(.system(.title))
                HStack {
                    Button("Loading") {
                        alertLoading.toggle()
                    }.buttonStyle(.bordered)
                    Button("Regular") {
                        alertRegular.toggle()
                    }.buttonStyle(.bordered)
                    Button("Complete") {
                        alertComplete.toggle()
                    }.buttonStyle(.bordered)
                    Button("Error") {
                        alertError.toggle()
                    }.buttonStyle(.bordered)
                }
            }
            
            VStack {
                Text("Banner").font(.system(.title))
                HStack {
                    Button("Slide") {
                        bannerSlideRegular.toggle()
                    }.buttonStyle(.bordered)
                    Button("Pop") {
                        bannerPopRegular.toggle()
                    }.buttonStyle(.bordered)
                    Button("Pop Complete") {
                        bannerPopComplete.toggle()
                    }.buttonStyle(.bordered)
                    Button("Pop SystemImage") {
                        bannerPopSystemImage.toggle()
                    }.buttonStyle(.bordered)
                }
            }
            
            
            Spacer()
        }
        .navigationTitle("AlertToast")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toast(isPresenting: $hudRegular) {
            AlertToast(displayMode: .hud, type: .regular, title: "Hud Regular!", subTitle: "Subtitle of Hud Regular")
        }
        .toast(isPresenting: $hudError) {
            AlertToast(displayMode: .hud, type: .error(.red), title: "Hud Error!", subTitle: "Subtitle of Hud Error")
        }
        .toast(isPresenting: $hudComplete) {
            AlertToast(displayMode: .hud, type: .complete(.green), title: "Hud Error!", subTitle: "Subtitle of Hud Error")
        }
        
        .toast(isPresenting: $alertRegular) {
            AlertToast(displayMode: .alert, type: .regular, title: "Alert regular!", subTitle: "Subtitle of Alert Regular")
        }
        .toast(isPresenting: $alertLoading) {
            AlertToast(displayMode: .alert, type: .loading, title: "Alert loading", subTitle: "Subtitle of Alert Loading")
        }
        .toast(isPresenting: $alertComplete) {
            AlertToast(displayMode: .alert, type: .complete(.green), title: "Alert Complete!", subTitle: "Subtitle of Alert Complete")
        }
        .toast(isPresenting: $alertError) {
            AlertToast(displayMode: .alert, type: .error(.red), title: "Alert Error!", subTitle: "Subtitle of Alert Error")
        }
        
        .toast(isPresenting: $bannerSlideRegular) {
            AlertToast(displayMode: .banner(.slide), type: .regular, title: "Banner Slide Regular", subTitle: "Subtitule of banner slide regular")
        }
        .toast(isPresenting: $bannerPopRegular) {
            AlertToast(displayMode: .banner(.pop), type: .regular, title: "Banner Pop Regular", subTitle: "Subtitule of banner pop regular")
        }
        .toast(isPresenting: $bannerPopComplete) {
            AlertToast(displayMode: .banner(.pop), type: .complete(.green), title: "Banner Pop Complete", subTitle: "Subtitule of banner pop complete")
        }
        .toast(isPresenting: $bannerPopSystemImage) {
            AlertToast(displayMode: .banner(.pop), type: .systemImage("waveform.circle.fill", .blue), title: "Banner Pop systemImage", subTitle: "Subtitule of banner pop systemImage")
        }
    }
}

struct AlertToastView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AlertToastView()
        }
    }
}
