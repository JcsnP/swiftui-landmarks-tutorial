//
//  CircleImage.swift
//  Landmarks
//
//  Created by pnyossita on 23/10/2567 BE.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("nan-hin-tha-ha")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
