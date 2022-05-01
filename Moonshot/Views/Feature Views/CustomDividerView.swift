//
//  SwiftUIView.swift
//  Moonshot
//
//  Created by Dakota Riley on 4/30/22.
//

import SwiftUI

struct CustomDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.lightBackground)
            .padding()
    }
}

struct CustomDividerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDividerView()
    }
}
