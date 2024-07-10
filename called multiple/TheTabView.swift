//
//  TheTabView.swift
//  called multiple
//
//  Created by Chris Wu on 6/30/24.
//

import SwiftUI

enum TabType : String, CaseIterable, Identifiable, Codable {
    case tab1, tab2
    
    var id : String {
        self.rawValue
    }
}

struct TheTabView: View {
    @EnvironmentObject var ourData: OurData
    
    var body: some View {
        TabView(selection: $ourData.selectedTab) {
            tabOne()
                .tabItem {
                    Label("one", systemImage: "trash")
                }.tag(TabType.tab1)
            
            tabTwo()
                .tabItem {
                    Label("two", systemImage: "plus")
                }.tag(TabType.tab2)
        }
    }
}

#Preview {
    TheTabView()
}
