//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Nunn, Frederick (IRG) on 12/03/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var state: StateController
    
    @State private var subjectChoice = ""
    @State private var enjoymentChoice = ""
    @State private var achievementChoice = ""
    @State private var paceChoice = ""
    @State private var badChoice = ""
    @State private var goodChoice = ""
    var body: some View {
        VStack {
            Text("Comment Card Generator")
                .font(.title)
            HStack {
                Text("Subject: ")
                    .padding()
                TextField("", text: $subjectChoice)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("How much do you enjoy the subject? ")
                    .padding()
                TextField("", text: $enjoymentChoice)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("How well are you doing in your subject? ")
                    .padding()
                TextField("", text: $achievementChoice)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("How is the class pace? ")
                    .padding()
                TextField("", text: $paceChoice)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("Areas you are good at: ")
                    .padding()
                TextField("", text: $badChoice)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("Areas you are bad at: ")
                    .padding()
                TextField("", text: $goodChoice)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Button("Create Comment"){
                state.currentComment.generateComment()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
