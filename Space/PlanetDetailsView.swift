//
//  PlanetDetailsView.swift
//  Space
//
//  Created by Sharvari on 2023-03-08.
//

import SwiftUI

struct PlanetDetailsView: View {
    @Binding var image: String
    @Binding var planet: String
    @Binding var desc: String
    
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        ZStack(alignment: .center){
            Color.clear.background(
                Image("Img_Background")
                    .resizable()
                    .scaledToFill()
                    .clipped()
            )
            .ignoresSafeArea()
            
            
            VStack(alignment: .center, spacing: 50){
                Text("Planet \(planet)")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                
                Image(image)
                    .resizable()
                    .frame(
                        width: UIScreen.main.bounds.size.width - 50,
                        height: UIScreen.main.bounds.size.width - 50
                    )
                    .rotationEffect(Angle(degrees: rotationAngle), anchor: .center)
                
                Text(desc)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            .padding(.horizontal, 30)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeIn(duration: 1).speed(0.1).repeatForever(autoreverses: false)){
                        rotationAngle = 360.0
                    }
                }
            }
//            .transition(.slide.animation(.easeInOut(duration: 0.1).delay(0.5).speed(0.5)))
        }
    }
}

struct PlanetDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationLink {
                PlanetDetailsView(
                    image: .constant("Img_Earth"),
                    planet: .constant("Earth"),
                    desc: .constant("Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability.")
                )
            } label: {
                Text("Click")
            }

            
        }
    }
}
