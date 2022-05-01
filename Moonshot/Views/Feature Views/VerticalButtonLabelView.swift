//
//  ButtonLabelView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct VerticalButtonLabelView: View {
    let mission: Mission
    
    var body: some View {
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)
                DateView(mission: mission)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.lightBackground)
        )
    }
}

struct VerticalButtonLabelView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        VerticalButtonLabelView(mission: missions[0])
    }
}
