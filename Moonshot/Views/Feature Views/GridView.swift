//
//  ContentView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/27/22.
//

import SwiftUI

struct GridView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VerticalButtonLabelView(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        GridView(missions: missions, astronauts: astronauts)
    }
}
