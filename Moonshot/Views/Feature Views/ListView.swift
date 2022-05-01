//
//  ListView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct ListView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        ScrollView {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HorizontalButtonLabelView(mission: mission)
                }
            }
        }
        .padding()
    }
}

struct ListView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        ListView(missions: missions, astronauts: astronauts)
    }
}
