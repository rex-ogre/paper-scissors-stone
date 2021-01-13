//
//  GameState.swift
//  RPS
//
//  Created by 陳冠雄 on 2021/1/1.
//

import Foundation

enum GameState {
    case begin
    case victory
    case lose
    case tie
}

extension GameState {
    
    var  reaction : String {
        switch self {
        case .begin:
            return "game begin"
        case .victory:
            return "victory"
        case .lose :
            return "lose"
        case .tie :
            return "tie"
        }
    }
    
}

