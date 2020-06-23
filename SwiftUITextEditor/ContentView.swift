//
//  ContentView.swift
//  SwiftUITextEditor
//
//  Created by Ramill Ibragimov on 23.06.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                NavigationLink(
                    destination: NotesView(),
                    label: {
                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                    })
            }.navigationTitle("Notes App")
        }
    }
}

struct NotesView: View {
    @State private var text = "Edit this text!"
    
    var body: some View {
        TextEditor(text: $text)
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
