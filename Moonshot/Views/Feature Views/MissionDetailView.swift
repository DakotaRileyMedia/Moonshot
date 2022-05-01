//
//  MissionDetailView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct MissionDetailView: View {
    let mission: Mission
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mission Highlights")
                .font(.title.bold())
                .padding(.bottom, 5)
            
            DateView(mission: mission)
                .padding(.vertical, 5)
                .font(.headline)
            
            Text(mission.description)
        }
        .padding(.horizontal)
    }
}

struct MissionDetailView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionDetailView(mission: missions[0])
    }
}
