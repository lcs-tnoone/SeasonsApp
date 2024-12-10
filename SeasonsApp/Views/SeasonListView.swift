//
//  SeasonListView.swift
//  SeasonsApp
//
//  Created by Thomas Noone on 2024-12-10.
//

import SwiftUI

struct SeasonListView: View {
    var body: some View {
        List{
            Text("Seasons")
                .font(.system(size: 50.0, weight: .bold, design: .default))
            
            SeasonsView(providedseason: Summer)
            SeasonsView(providedseason: Autumn)
            SeasonsView(providedseason: Winter)
            SeasonsView(providedseason: Spring)
        }
    }
}
#Preview {
    SeasonListView()
}

struct SeasonsView: View {
    let providedseason: Season
    var body: some View {
        HStack{
            Image(systemName: "\(providedseason.icon)")
            Text ("\(providedseason.seasons)")
                .font(.system(size: 24.0, weight: .bold, design: .default))
            Text("\((providedseason.description))")
        }
    }
}
