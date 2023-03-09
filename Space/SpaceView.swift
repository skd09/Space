//
//  SpaceView.swift
//  Space
//
//  Created by Sharvari on 2023-03-05.
//

import SwiftUI
import Foundation

struct SpaceView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.clear.background(
                Image("Img_Background")
                    .resizable()
                    .scaledToFill()
                    .clipped()
            ).ignoresSafeArea()
            
            Text("Space\nExplorer")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .padding(.top, 50)
                .zIndex(10)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .center, spacing: 30){
                    ForEach(planets, id: \.id){ planet in
                        SpaceCardItem(
                            image: planet.image,
                            planet: planet.name,
                            desc: planet.desc
                        )
                        .padding(.horizontal, 30)
                    }
                }
            }
        }
        .frame(
            width: UIScreen.main.bounds.size.width,
            height: UIScreen.main.bounds.size.height,
            alignment: .topLeading
        )
    }
}

struct SpaceView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceView()
    }
}
