//
//  ContentView.swift
//  myStore
//
//  Created by Богдан Борисенко on 25.06.2023.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        NavigationView{
            ZStack{
                
                VStack{
                    
                    GeometryReader { reader in // 1
                        VStack(spacing: 0) {
                            
                            Color("orange")
                                .frame(height: reader.size.height * (1/1.65)) // 2
                            Color("whiteOur")
                                .frame(height: reader.size.height * (1/2)) // 3
                            
                        }
                    }
                }
                VStack{
                    ZStack{
                        Image("fruits")
                        
                        Ellipse()
                            .fill(Color.elipsDow)
                            .frame(width: 360, height: 20)
                            .position(x:220, y:610)
                    }
                    
                    .position(x:210, y:388)
                    
                    
                    //                .background(.orange)
                }
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Get The Freshest Fruit Salad Combo")
                            .font(.custom("BrandonGrotesqueMedium", size: 20))
                            .padding(.bottom, 10)
                            .foregroundColor(.darkBlue)
                        
                        
                        Text("We deliver the best and freshest fruit salad in town. Order for a combo today!!!")
                            .font(.custom("BrandonGrotesque-Regular", size: 20))
                            .padding(.bottom, 25)
                            .foregroundColor(.darkBlueText)
                        
                    }
                    .foregroundColor(.white)
                    
                    
//                    Button(action: {
//
//                    }){
//                        Text("scssdc")
//                    }
                    
                    
                    NavigationLink(destination: nameCheck()){
                        Text("Let’s Continue")
                    }
                    .padding(.horizontal, 110)
                    .padding(.vertical, 20)
                    .background(.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
//                    ("Let’s Continue") {
////                        self.isShowinDetailView = true
//
//
//                    }
                    
                    
                }
                .position(x:220, y:688)
                .padding(.top, 30)
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
