//
//  ContentView.swift
//  ThumbTry
//
//  Created by Alex Agapov on 09.06.2023.
//

import SwiftUI
import AppKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")

            Image(nsImage: .init(named: "pic")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .border(.yellow)
            Img()
                .aspectRatio(contentMode: .fit)
                .border(.red)
            Image(nsImage: img())
                .resizable(resizingMode: .stretch)
//                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1000, height: 1000)
                .clipped()
                .border(.cyan)
        }
        .padding()
//        .task {
//            let hash = imageToThumbHash(image: .init(named: "pic")!)
//            print(hash.base64EncodedString())
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Img: NSViewRepresentable {

    func makeNSView(context: Context) -> some NSView {
        let view = NSImageView()
        view.imageScaling = .scaleProportionallyUpOrDown
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.image = img()
        return view
    }

    func updateNSView(_ nsView: NSViewType, context: Context) {

    }

}

func img() -> NSImage {
//    let image = Bundle.main.image(forResource: "pic.jpg")!
////    let image = NSImage(named: "pic")!
//    let hash = imageToThumbHash(image: image)
//    print(hash.base64EncodedString())

//    let img = thumbHashToImage(hash: hash)
    let img = thumbHashToImage(
        hash: Data(base64Encoded: "4ygOJARs+HqYdll3h4iHgHkImA==")!
    )

//    let d = "4ygOJARs+HqYdll3h4iHgHkImA==".data(using: .utf8)!
//
//    print(String(data: d, encoding: .utf8))

    return img
}
