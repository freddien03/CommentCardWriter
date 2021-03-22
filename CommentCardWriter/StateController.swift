//
//  StateController.swift
//  CommentCardWriter
//
//  Created by Nunn, Frederick (IRG) on 22/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var currentComment: Comment = Comment()
    @Published var student: Student = Student(comments: [])
    
    
}
