//
//  FrameworkGridViewModel.swift
//  Apple-Framworks
//
//  Created by Hadeel Jamoul on 23/12/2024.
//

import SwiftUI

// true when we select a framework
class FrameworkGridViewModel: ObservableObject{
    
    // grid view coulmns
    let coulmns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
}
