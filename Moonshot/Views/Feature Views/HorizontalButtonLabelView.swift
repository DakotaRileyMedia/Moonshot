//
//  HorizontalButtonLabelView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct HorizontalButtonLabelView: View {
    let mission: Mission
    
    var body: some View {
        HStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
                .background(.darkBackground)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)
                DateView(mission: mission)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
            .padding()
            
            Spacer()
        }
        .background(.lightBackground)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.lightBackground)
        )
    }
}

struct HorizontalButtonLabelView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        HorizontalButtonLabelView(mission: missions[0])
    }
}
