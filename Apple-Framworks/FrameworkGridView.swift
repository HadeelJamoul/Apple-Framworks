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
            GridItem(.flexible()),
        ]
        
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: coulmns) {
                        // we already included the id in the Framework struct so there is no need to pass it here like this id: \.id
                        
                        //framework the name of each item in the frameworks
                        ForEach(MockData.frameworks){
                            framework in FrameworkTitleView(framework: framework)
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
        }
    }
}


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
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

