import SwiftUI

// TODO: is welcome view a good feature?
struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Willkommen zu Gedenkstätten und Museen zur Geschichte der DDR und der SED-Diktatur")
                .font(.largeTitle)
            
            Text("Bitte wählen Sie einen Ort aus.")
                .foregroundColor(.secondary)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
