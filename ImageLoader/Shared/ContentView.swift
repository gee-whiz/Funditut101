//
// Coding Fundi CONFIDENTIAL
// ---------------------------
//
// Coding Fundi.
// All Rights Reserved.

import SwiftUI

struct ContentView: View {
    private let imageUrl = "https://fundiimages.blob.core.windows.net/lesson1/image1.jpeg"
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)){ image in
            image
                .resizable()
                .scaledToFit()
        }placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 150)
                .foregroundColor(.blue)
        }.padding(40)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
