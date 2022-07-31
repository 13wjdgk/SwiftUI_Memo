//
//  SwiftUI_memoApp.swift
//  Shared
//
//  Created by 김가은 on 2022/07/31.
//

import SwiftUI

@main
struct SwiftUI_memoApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
