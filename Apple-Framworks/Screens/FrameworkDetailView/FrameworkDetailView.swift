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
                // if i want to use my custome button
                // AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .tint(.red)
            .controlSize(.large)
            
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


