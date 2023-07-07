//
//  itemOrderView.swift
//  myStore
//
//  Created by Богдан Борисенко on 07.07.2023.
//

import SwiftUI

struct itemOrderView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GeometryReader { reader in // 1
                            VStack(spacing: 0) {
                                    Color("orange")
                                    .frame(height: reader.size.height * (1/2.5)) // 2
                                    Color("whiteOur")
                                        .frame(height: reader.size.height * (1/1)) // 3
                                
                                    }
                        }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

struct itemOrderView_Previews: PreviewProvider {
    static var previews: some View {
        itemOrderView()
    }
}
