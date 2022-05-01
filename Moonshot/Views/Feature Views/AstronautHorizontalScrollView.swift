//
//  AstronautScrollView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct AstronautHorizontalScrollView: View {
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    
    let mission: Mission
    let crew: [CrewMember]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Crew")
            .font(.title2.bold())
            .padding(.bottom, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(crew, id: \.role) { crewMember in
                        NavigationLink {
                            AstronautView(astronaut: crewMember.astronaut)
                        } label: {
                            HStack {
                                Image("\(crewMember.astronaut.id)")
                                    .resizable()
                                    .frame(width: 104, height: 72)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .strokeBorder(.white , lineWidth: 1)
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text(crewMember.astronaut.name)
                                        .foregroundColor(.white)
                                        .font(.headline)
                                    Text(crewMember.role)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
    
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}

struct AstronautHorizontalScrollView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautHorizontalScrollView(mission: missions[0], astronauts: astronauts)
    }
}
