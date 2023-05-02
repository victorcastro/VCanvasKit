//
//  File.swift
//  
//
//  Created by Victor Castro on 1/05/23.
//

import SwiftUI

public struct AvatarKit: View {
    
    let image: Image
    let size: CGFloat
    var borderColor: Color = .white
    
    public init(image: Image, size: CGFloat, borderColor: Color = .black) {
        self.image = image
        self.size = size
        self.borderColor = borderColor
    }
    
    public var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .cornerRadius(size / 2)
            .overlay(
                Circle()
                    .stroke(borderColor, lineWidth: 4)
                    .frame(width: size, height: size)
            )
            .shadow(radius: 10)
    }
}
