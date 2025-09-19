//
//  WidgetItemData.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 19.09.25.
//

import SwiftUI

struct WidgetItemData: Identifiable, Hashable {
    
    var id: UUID = UUID()
    var title: String
    var price: String
    var percent: String
    var description: String
    var type: WidgetType
    
    enum WidgetType: String, Codable {
        case possitive
        case negative
    }
    
    static func mockData() -> [WidgetItemData] {
        [
            WidgetItemData(title: "Not Income", price: "193.000", percent: "+35%", description: "from this month", type: .possitive),
            WidgetItemData(title: "Total Result", price: "32.000", percent: "-24%", description: "from this month", type: .negative),
        ]
    }
}
