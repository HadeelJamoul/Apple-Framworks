//
//  xButton.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 27/12/2024.
//

import SwiftUI

struct xButton: View {
    @Binding var isShowXButton: Bool
    
    var body: some View {
        HStack{
            
            Spacer()
            
            Button{
                isShowXButton = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                // we add this frame only if we press out the image we wont mess the x
                    .frame(width: 44 , height: 44)
            }.padding()
        }
    }
}

// set any default value true or false
#Preview {
    xButton(isShowXButton: .constant(false))
}
