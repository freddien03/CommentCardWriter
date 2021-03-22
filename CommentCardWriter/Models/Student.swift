//
//  Student.swift
//  CommentCardWriter
//
//  Created by Nunn, Frederick (IRG) on 12/03/2021.
//

import Foundation

class Student {
    var subjects: [String] = []
    var comments: [Comment]
    
    init(comments: [Comment]) {
        self.comments = comments
    }
    
    func createComment(subject: String, enjoyment: Int, achievement: Int, pace: Int, goodAreas: [String], badAreas: [String]){
        
    }
}
