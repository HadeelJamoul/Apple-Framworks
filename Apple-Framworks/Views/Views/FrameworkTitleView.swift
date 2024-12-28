//
//  FrameworkTitleView.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 28/12/2024.
//

import SwiftUI

struct FrameworkTitleView : View {
    
    let framework: Framework
    
    var body: some View{
        VStack(){
            Image(framework.imageName)
                .resizable()
                .frame(width: 100 , height: 100)

            Text(framework.name)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                // .foregroundColor(.white)
                // shrink the text if needed to 50 %
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
