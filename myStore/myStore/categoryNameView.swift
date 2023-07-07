//
//  categoryNameView.swift
//  myStore
//
//  Created by Богдан Борисенко on 06.07.2023.
//

import SwiftUI

struct categoryNameView: View {
    
    @State private var selectedIndex: Int = 0
    private let categories = ["Hottest", "Popular", "New combo", "Top"]
    var body: some View {
        NavigationView() {
            ZStack {
                Color("whiteOur")
                    .ignoresSafeArea(.all)
                        
                ScrollView {
                    VStack (alignment: .leading){
                        AppBarView()
                        
                        TagLineView()
                        
                        SearchView()
                        
                        RecommendedComboView()
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< categories.count) { i in
                                    CategotyView(isActive: i == selectedIndex, text: categories[i])
                                        .onTapGesture {
                                             selectedIndex = i
                                        }
                                }
                            }
                            .padding(.horizontal, 30)
                        }
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 5) { index in
                                    ProductCardView(image: Image("order_\(index + 1)"))
                                }
                            }
                        }
                        
                        Text("New")
                            .foregroundColor(Color("darkBlue"))
                            .fontWeight(.bold)
                            .padding(.horizontal, 30)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 5) { index in
                                    ProductCardView(image: Image("order_\(index + 1)"))
                                }
                            }
                        }
                    }
                }
                
                }
        }
        .navigationBarHidden(true)
        }
}

struct categoryNameView_Previews: PreviewProvider {
    static var previews: some View {
        categoryNameView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "person")
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color("orange"))
                    .cornerRadius(10.0)
                    .frame(width:50, height: 50)
            }
            
            Spacer()
            
            NavigationLink (destination: basketView()){
                Image(systemName: "cart")
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color("orange"))
                    .cornerRadius(10.0)
                    .frame(width:50, height: 50)
            }
            
        }
        .padding(.horizontal, 30)
    }
}

struct TagLineView: View {
    
    var body: some View {
        Group {
            Text("Hello , ")
                .font(.custom("BrandonGrotesque-Regular", size: 25))
            +
            Text("What fruit salad \ncombo do you want today?")
                .font(.custom("BrandonGrotesqueMedium", size: 25))
        }
        .padding(.horizontal, 30)
    }
}

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image("Search")
                    .padding(.trailing, 8)
                TextField("Search for fruit salad combos", text: $search)
                    .font(.system(size: 13))
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal)
            
            Button(action: {}) {
                Image("switch")
                    .padding(.all, 20)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .padding(.trailing)
            }
            
        }
        .padding(.horizontal)
    }
}

struct RecommendedComboView: View {
    var body: some View {
        VStack {
            Text("Recommended Combo")
                .font(.custom("BrandonGrotesqueMedium", size: 25))
                .padding(.leading, 30)
            
            HStack {
                ZStack {
                    Image("order_1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .offset(y: -15)
                    Image("heart")
                        .offset(y: -70)
                        .offset(x: 60)
                    Text("Honey lime combo")
                        .font(.custom("BrandonGrotesqueMedium", size: 16))
                        .offset(y:55)
                    VStack {
                        Group {
                            Text("$ ")
                                .font(.custom("BrandonGrotesqueMedium", size: 14))
                                .foregroundColor(Color("orange"))
                                .bold()
                            +
                            Text("29")
                                .font(.custom("BrandonGrotesqueMedium", size: 14))
                                .foregroundColor(Color("orange"))
                            
                        }
                        .offset(y: 80)
                        .offset(x: -52)
                        
                        Button (action: {}) {
                            Image(systemName: "plus")
                                .background(Color("orangeTin"))
                                .cornerRadius(10.0)
                                .foregroundColor(Color("orange"))
                        }
                        .offset(x: 55)
                        .offset(y: 65)
                        
                    }
                }
                .frame(width: 152, height: 183)
                .border(Color.white, width: 4)
                .background(.white)
                .cornerRadius(10)
                
                Spacer()
                
                ZStack {
                    Image("order_2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .offset(y: -15)
                    Image("heart")
                        .offset(y: -70)
                        .offset(x: 60)
                    Text("Honey lime combo")
                        .font(.custom("BrandonGrotesqueMedium", size: 16))
                        .offset(y:55)
                    VStack {
                        Group {
                            Text("$ ")
                                .font(.custom("BrandonGrotesqueMedium", size: 14))
                                .foregroundColor(Color("orange"))
                                .bold()
                            +
                            Text("29")
                                .font(.custom("BrandonGrotesqueMedium", size: 14))
                                .foregroundColor(Color("orange"))
                            
                        }
                        .offset(y: 80)
                        .offset(x: -52)
                        
                        Button (action: {}) {
                            Image(systemName: "plus")
                                .background(Color("orangeTin"))
                                .cornerRadius(10.0)
                                .foregroundColor(Color("orange"))
                        }
                        
                    }
                }
                .frame(width: 152, height: 183)
                .border(Color.white, width: 4)
                .background(.white)
                .cornerRadius(10)
            }
            .padding(.horizontal,30)
        }
    }
}

struct CategotyView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("darkBlue"): Color.black.opacity(0.5))
            
            if (isActive) {
                Color("orange")
                    .frame(width: 25, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
        .padding(.bottom, 20)
        .padding(.top, 20)
    }
}

struct ProductCardView: View {
    let image: Image
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 110, height: 100)
                .cornerRadius(20.0)
                
            
            Text("Quinoa fruit salad")
                .font(.title3)
                .font(.custom("BrandonGrotesqueMedium", size: 16))
            
            HStack {
                Group {
                    Text("$ ")
                        .font(.custom("BrandonGrotesqueMedium", size: 14))
                        .foregroundColor(Color("orange"))
                        .bold()
                    +
                    Text("29")
                        .font(.custom("BrandonGrotesqueMedium", size: 14))
                        .foregroundColor(Color("orange"))
                    
                }
                
                
                Button (action: {}) {
                    Image(systemName: "plus")
                        .background(Color("orangeTin"))
                        .cornerRadius(10.0)
                        .foregroundColor(Color("orange"))
                }
                .offset(x: 60)
            }
            .padding(.leading, -55)
            .padding(.top, 2)
            
        }
        .frame(width: 130, height: 160)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        .padding(.horizontal, 25)
        .padding(.bottom, 30)
        
    }
}
