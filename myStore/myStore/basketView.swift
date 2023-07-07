//
//  basketView.swift
//  myStore
//
//  Created by Богдан Борисенко on 28.06.2023.
//

import SwiftUI

struct basketView: View {
    var body: some View {
    
        
        NavigationView {
            ZStack {
                GeometryReader { reader in // 1
                            VStack(spacing: 0) {
                                    Color("orange")
                                    .frame(height: reader.size.height * (1/5)) // 2
                                    Color("whiteOur")
                                        .frame(height: reader.size.height * (1/1)) // 3
                                    }
                        }
                HStack {
                    HStack  {
                        Button (action: {
                            
                        }){
                            NavigationLink (destination: categoryNameView()) {
                                Text("< ")
                                    .fontWeight(.bold)
                                    .font(.system(size: 35))
                                +
                                Text("Go back")
                            }
                            .foregroundColor(.darkBlueText)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 2)
                            .background(.white)
                            .cornerRadius(50)
                            .font(.custom(("BrandonGrotesque-Regular"), size: 25))
        //                    .padding(.trailing, 10)
                            
                            
                        }
                    }
                    .position(x:75,y:130)
                    HStack {
                        Text("My Basket")
                            .font(.custom(("BrandonGrotesque-Medium"), size: 32))
                    }
                    .position(x:3,y:130)
        
                    
                }
                
                HStack {
                    
                }
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)

    }
}

struct basketView_Previews: PreviewProvider {
    static var previews: some View {
        basketView()
    }
}
