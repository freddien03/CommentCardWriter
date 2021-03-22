//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Nunn, Frederick (IRG) on 12/03/2021.
//

import Foundation

class Comment {
    var subject: String = ""
    var enjoyment: Int = 5
    var achievement: Int = 5
    var pace: Int = 5
    var goodAreas: [String] = []
    var badAreas: [String] = []
    let template: [String] = ["in ", ", I am enjoying the subject ", ", and I think i am doing ", " in it. I think the pace of the class is ", ". I think the areas I am good at are ", ", and the areas I am bad at are ", "."]
    let enjoymentOptions = ["extremely", "very much", "fairly well", "not very much", "not at all"]
    let achievementOptions = ["extremely well", "very well", "fairly well", "averagely", "not very well", "badly", "very badly"]
    let paceOptions = ["too fast", "just right", "too slow"]
    
    init() {
//        self.subject = subject
//        self.enjoyment = enjoyment
//        self.achievement = achievement
//        self.pace = pace
//        self.goodAreas = goodAreas
//        self.badAreas = badAreas
    }
    
    func generateComment() -> String{
        let part1 = template[0] + enjoymentOptions[enjoyment] + template[1]
        let part2 = achievementOptions[achievement] + template[3] + paceOptions[pace]
        var goodAreasStr: String = ""
        var badAreasStr: String = ""
        for i in goodAreas{
            goodAreasStr += "\(i), "
        }
        for i in badAreas{
            badAreasStr += "\(i), "
        }
        let part3 = template[4] + goodAreasStr + template[5] + badAreasStr + template[6]
        return part1 + part2 + part3
    }
}
