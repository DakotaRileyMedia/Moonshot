//
//  MissionView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/29/22.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    let astronauts: [String: Astronaut]
    
    var body: some View {
        GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: geometry.size.width * 0.6)
                                .padding(.top)
                            CustomDividerView()
                            
                            MissionDetailView(mission: mission)
                            
                            CustomDividerView()
                            
                            AstronautHorizontalScrollView(mission: mission, astronauts: astronauts)
                        }
                        .padding(.bottom)
                    }
                }
                .navigationTitle(mission.displayName)
                .navigationBarTitleDisplayMode(.inline)
                .background(.darkBackground)
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        MissionView(mission: missions[0], astronauts: astronauts)
            .preferredColorScheme(.dark)
    }
}
