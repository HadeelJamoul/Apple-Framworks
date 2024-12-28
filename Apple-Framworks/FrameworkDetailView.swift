//
//  FrameworkDetailView.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 19/12/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    // Binding we use it when we need to pass a value throught levels
    
    @Binding var isShowingFrameworkDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            
             xButton(isShowXButton: $isShowingFrameworkDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.callout)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: MockData.defaultFramwork.urlString)!)
        }
    }
}
    
struct FrameworkDetailView_preview: PreviewProvider{
        static var previews: some View {
            FrameworkDetailView(framework: MockData.sampleFramework , isShowingFrameworkDetailView: .constant(false))
    }
}


