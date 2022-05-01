//
//  MissionNameVIew.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct MissionNameView: View {
    let mission: Mission
    
    var body: some View {
        Text()
    }
}

struct MissionNameView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionNameView(mission: missions[0])
    }
}
