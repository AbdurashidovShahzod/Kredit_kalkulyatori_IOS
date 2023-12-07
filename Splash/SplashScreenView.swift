//
//  SplashScreenView.swift
//  Kredit kalkulyatori
//
//  Created by Shahzod Abdurashidov on 07/12/23.
//

import SwiftUI

struct SplashScreenView: View {

    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            ContentView()
        }else {
            VStack{
                VStack{
                    Image("splash_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.black)
                        .frame(width: 200 , height: 200)
                    Text("Kredit kalkulyatori").font(Font.custom("caslon_bold", fixedSize: 24))
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 1.1
                        self.opacity = 0.9
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    
    }
}
#Preview {
    SplashScreenView()
}
