import SwiftUI

struct StoreView: View {
    @Binding var timesClicked:Int

    var body: some View {
        VStack(alignment: .center){
            Text("Store").font(.title)
            Text("Koop goodies voor je cookies") 
        }
    }
}

#Preview {
    StoreView(timesClicked: .constant(0))
}
