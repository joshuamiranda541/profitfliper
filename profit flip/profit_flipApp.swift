//
//  profit_flipApp.swift
//  profit flip
//
//  Created by Joshua Miranda on 3/29/26.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct profit_flipApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: profit_flipMigrationPlan.self) {
            ContentView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct profit_flipMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        profit_flipVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct profit_flipVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Item.self,
    ]
}
