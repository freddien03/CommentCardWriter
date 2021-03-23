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
    
    func createComment(subject: String, enjoyment: String, achievement: String, pace: String, goodAreas: [String], badAreas: [String]){
        let enjInt = Int(enjoyment) ?? 5
        let achInt = Int(achievement) ?? 5
        let paceInt = Int(pace) ?? 5
        subjects.append(subject)
        let comment = Comment(subject: subject, enjoyment: enjInt, achievement: achInt, pace: paceInt, goodAreas: goodAreas, badAreas: badAreas)
        comments.append(comment)
    }
}
