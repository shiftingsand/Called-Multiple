//
//  tabOne.swift
//  called multiple
//
//  Created by Chris Wu on 6/30/24.
//

import SwiftUI

struct tabOne: View {
    @EnvironmentObject var ourData: OurData
    
    var body: some View {
        NavigationStack(path: $ourData.settingsNavPath) {
            Form {
                Section {
                    NavigationLink(value: SettingsNav.general) {
                        Text("General")
                    }
                }
                
                Section {
                    NavigationLink(value: SettingsNav.pleaseWork) {
                        Text("Please")
                    }
                }
            }
            .onAppear() {
                print("onappear tab 1 \(Date.now)")
            }
            .task {
                print("task tab 1 \(Date.now)")
            }
            .navigationDestination(for: SettingsNav.self, destination: { oneDest in
                switch oneDest {
                    case .general:
                        General()
                    case .pleaseWork:
                        Please()
                }
            })
        }
    }
}

#Preview {
    tabOne()
}
