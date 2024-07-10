//
//  tabTwo.swift
//  called multiple
//
//  Created by Chris Wu on 6/30/24.
//

import SwiftUI

struct tabTwo: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    NavigationLink(destination: Text("nothing")) {
                        Text("go to nothing")
                    }
                }
            }
            .onAppear() {
                print("onappear 2 \(Date.now)")
            }
            .task {
                print("task 2 \(Date.now)")
            }
        }
    }
}

#Preview {
    tabTwo()
}
