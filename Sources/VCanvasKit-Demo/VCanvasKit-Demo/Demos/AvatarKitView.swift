//
//  AvatarView.swift
//  VCanvasKit-Demo
//
//  Created by Victor Castro on 1/05/23.
//

import SwiftUI
import VCanvasKit

struct AvatarKitView: View {
    
    var body: some View {
        VStack {
            AvatarKit(image: Image(systemName: "person.fill"), size: 50, borderColor: .black)
            AvatarKit(image: Image(systemName: "figure.wave.circle.fill"), size: 100, borderColor: .red)
            AvatarKit(image: Image(systemName: "figure.walk"), size: 150, borderColor: .blue)
        }
    }
}

struct AvatarKitView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarKitView()
    }
}
