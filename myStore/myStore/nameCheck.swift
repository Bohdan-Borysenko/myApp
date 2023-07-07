//
//  nameCheck.swift
//  myStore
//
//  Created by Богдан Борисенко on 26.06.2023.
//

import SwiftUI

struct nameCheck: View {
    @State private var name = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            ZStack {
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
                VStack {
                    VStack {
                        Image("frutesTr")
                        
                        Ellipse()
                        .fill(Color.elipsDow)
                        .frame(width: 360, height: 20)
                    }
                    .padding(.bottom, 50)
                    VStack {
                        TextField("Name", text: $name)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(10.0)
                            .frame(width: 330)
                            .padding()
                        
                        
                        
    //                        .padding(.bottom, 20)
//                        TextField("Password", text: $password)
//                            .textFieldStyle(.roundedBorder)
//                            .foregroundColor(Color("textColFon"))
//                            .border(Color(UIColor.separator))
//                            .padding(.top, 20)
                        
                        NavigationLink(destination: categoryNameView()) {
                            Text("Start Ordering")
                            
                            
                        }
                        .padding(.horizontal, 110)
                        .padding(.vertical, 20)
                        .background(.orange)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        
                    }
    //                .padding(.top, 50)
                }
                
                }
            .edgesIgnoringSafeArea(.all)
        }
            .navigationBarHidden(true)
    }
    func saveText() {
        dataArray.append(name)
    }
}

struct nameCheck_Previews: PreviewProvider {
    static var previews: some View {
        nameCheck()
    }
}
