import SwiftUI

struct CreditsView: View {
    var name = "Nathan Wilson"
    var body: some View {
        Text("Credits")
            .font(.title)
        ForEach(0...4, id: \.self) { _ in
            Text(name)
        }
    }
}

#Preview {
    CreditsView()
}
