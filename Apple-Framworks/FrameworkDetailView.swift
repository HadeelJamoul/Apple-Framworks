//
//  FrameworkDetailView.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 19/12/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack{
            
            HStack{
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                    // we add this frame only if we press out the image we wont mess the x
                        .frame(width: 44 , height: 44)
                }.padding()
            }
            
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.callout)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
            
        }
    }
}
    
struct FrameworkDetailView_preview: PreviewProvider{
        static var previews: some View {
            FrameworkDetailView(framework: MockData.sampleFramework)
    }
}


