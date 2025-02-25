//
//  ListItemRowView.swift
//  NLPTodo
//
//  Created by Spenser Dubin on 2/24/25.
//

import SwiftUI

struct ListItemRowView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Laundry")
                    .font(.headline)
                
                Text("description test")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ListItemRowView()
}
