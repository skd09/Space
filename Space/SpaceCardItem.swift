//
//  SpaceCardItem.swift
//  Space
//
//  Created by Sharvari on 2023-03-05.
//

import SwiftUI

struct SpaceCardItem: View {
    
    var image: String = "Img_Earth"
    var planet: String = "Earth"
    var desc: String = "Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability."
    
    var body: some View {
        VStack{
            Spacer()
            
            ZStack{
                VStack(alignment: .center, spacing: 20){
                    Text(planet)
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .padding(.top, 150)
                        .padding(.horizontal, 30)
                        .foregroundColor(Color("Color_Dark_Gray"))
                    
                    Text(desc)
                        .foregroundColor(Color("Color_Dark_Gray"))
                        .font(.system(size: 18))
                        .padding(.horizontal, 30)
                        .lineLimit(3)
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .padding(30)
                            .background(Color("Color_Dark_Gray"))
                            .clipShape(Circle())
                    }
                    .padding(.bottom, 20)
                }
                .background(Color("Color_OffWhite"))
                .cornerRadius(30)
                .frame(
                    width: UIScreen.main.bounds.size.width - 60,
                    height: UIScreen.main.bounds.size.height * 0.5,
                    alignment: .center
                )
                
                Image(image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.top, -260)

            }
            
            Spacer()
        }
        .zIndex(10)
    }
}

struct SpaceCardItem_Previews: PreviewProvider {
    static var previews: some View {
        SpaceCardItem()
    }
}
