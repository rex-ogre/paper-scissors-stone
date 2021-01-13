//
//  Sign.swift
//  RPS
//
//  Created by 陳冠雄 on 2021/1/1.
//

import Foundation

enum Sign {
    case scissors
    case paper
    case stone
}

extension Sign {
    
    func matchResult(enemySign : Sign) -> String {
        switch self {
        case .scissors:
            switch enemySign {
            case .paper :
                return "win"
            case .scissors :
                return "tie"
            case .stone :
                return "lose"
            }
        case .stone:
            switch enemySign {
            case .paper:
                return "lose"
            case .scissors:
                return "win"
            case .stone:
                return "tie"
            }
        case .paper :
            switch enemySign {
            case .paper:
                return "tie"
            case .scissors:
                return "lose"
            case .stone:
                return "win"
            }
        }
    }
    
}

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .stone
    }
    else if sign == 1 {
        return .paper
    }
    else {
        return .scissors
    }
}
