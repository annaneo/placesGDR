//
//  WelcomeView.swift
//  PlacesGDR
//
//  Created by Anna Neovesky on 20.01.22.
//

import SwiftUI

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
