
// the views always rerender fall and rebuild again
// the state stay persistent
// imagine if the state build and rerender as the view so it will be nil in some cases
// Freamwork?

import SwiftUI

struct FrameworkGridView: View {
    
    //when you initilize a bran new view model we use state
    @StateObject var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()

    var body: some View {
        
        let coulmns: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
        
// we gonna use onTapGesture to update our sourth of truth (data)
// what we need to update is the framework that we selected
        
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: coulmns) {
                        // we already included the id in the Framework struct so there is no need to pass it here like this id: \.id
                        
                        //framework the name of each item in the frameworks
                        ForEach(MockData.frameworks){
                            framework in FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.defaultFramwork,
                                        isShowingFrameworkDetailView: $viewModel.isShowingDetailView
                    )
                }
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

