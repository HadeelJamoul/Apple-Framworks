//
//  AFButton.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 19/12/2024.
//

import SwiftUI

struct AFButton: View {
    
    var title: String

    var body: some View {
            
            Text(title)
                .frame(width: 280, height: 50)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        }
}

struct AFButton_preview: PreviewProvider{
    static var previews: some View {
        AFButton(title: "test text")
    }
}
