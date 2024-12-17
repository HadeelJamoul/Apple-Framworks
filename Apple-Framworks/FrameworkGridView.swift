//
//  FrameworkGridView.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 14/12/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        
        let coulmns: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())]
        
        
        LazyVGrid(columns: coulmns, content: {
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")
            FrameworkTitleView(imageName: "app-clip", name: "App Clips")

        })
    }
}


struct FrameworkTitleView : View {
    
    let imageName: String
    let name: String
    
    var body: some View{
        VStack(){
            Image(imageName)
                .resizable()
                .frame(width: 100 , height: 100)

            Text(name)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                // shrink the text if needed to 50 %
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

