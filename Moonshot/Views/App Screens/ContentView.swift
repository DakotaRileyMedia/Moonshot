//
//  ContentView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGridView = true
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        NavigationView {
            Group {
                if showingGridView {
                    GridView(missions: missions, astronauts: astronauts)
                } else {
                    ListView(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    showingGridView.toggle()
                } label: {
                    if showingGridView {
                        Image(systemName: "list.bullet")
                    } else {
                        Image(systemName: "square.grid.2x2")
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
