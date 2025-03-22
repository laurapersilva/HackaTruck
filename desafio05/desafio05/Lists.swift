//
//  Lists.swift
//  desafio05
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct Lists: View {
    var body: some View {
        VStack{
            Text("Lists")
            List {
                HStack {
                    Text("A List Item")
                    Spacer()
                    Image(.systemImage:"house.fill")
                }
                
                Text("A Second List Item")
                Text("A Third List Item")
            }
        }
    }
}

#Preview {
    Lists()
}
