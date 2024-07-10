//
//  OurData.swift
//  called multiple
//
//  Created by Chris Wu on 7/1/24.
//

import Foundation

enum SettingsNav : Hashable {
    case general, pleaseWork
}

@MainActor
final class OurData: ObservableObject {
    @Published var selectedTab : TabType = TabType.tab1
    @Published var settingsNavPath = [SettingsNav]()

    static let shared = OurData()
}
