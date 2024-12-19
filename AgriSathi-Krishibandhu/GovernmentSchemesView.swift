//
//  GovernmentSchemesView.swift
//  AgriSathi-Krishibandhu
//
//  Created by Priyankshu Sheet on 04/09/24.
//

import SwiftUI

struct GovernmentSchemesView: View {
    @State private var schemes: [GovernmentScheme] = GovernmentService().fetchSchemes()
    
    var body: some View {
        List(schemes) { scheme in
            VStack(alignment: .leading) {
                Text(scheme.name).font(.headline)
                Text(scheme.description).padding(.top, 2)
                Link("More Info", destination: scheme.link).padding(.top, 4)
            }
        }
        .navigationTitle("Government Schemes")
    }
}


#Preview {
    GovernmentSchemesView()
}
