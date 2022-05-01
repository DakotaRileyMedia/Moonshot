//
//  DateView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct DateView: View {
    let mission: Mission
    
    var body: some View {
        Text("Date: \(mission.formattedLaunchDate)")
    }
}

struct DateView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        DateView(mission: missions[0])
    }
}
