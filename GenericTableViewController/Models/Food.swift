//
//  SoccerPlayer.swift
//  AdvanceGenericsReusableUI
//
//  Created by Serhat Sezer on 10.08.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import Foundation

struct Food: ModelRepresentable {
    let name: String
    let price: Double
    
    // protocol variable
    var modelDescription: String {
        return "\(name) \(price)"
    }
}
