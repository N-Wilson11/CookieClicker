import SwiftUI

struct ContentView: View {
    @State var timesClicked = 0
    @State var isShowingSheet = false
    var body: some View {
        NavigationView{
            VStack {
                Button(
                    action: {
                        timesClicked += 1
                        
                    },
                    label: {
                        Image(.cookie)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                )
                Text("You clicked the cookie \(timesClicked) times!")
                NavigationLink(destination: CreditsView()){
                    Text("Credits")
                }.padding()
                NavigationLink(destination: StoreView(timesClicked: .constant(0))){
                    Button(
                        action: {
                            isShowingSheet = true
                        }
                    ){
                        Text("Store")
                    }
                }
            }.sheet(isPresented: $isShowingSheet, content: {StoreView(timesClicked: $timesClicked)}).navigationBarTitle("Cookie clicker")
                .padding()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


#Preview {
    ContentView()
}
