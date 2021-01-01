//
//  Task.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

struct Task: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var isChecked: Bool
    
    init(title: String, isChecked: Bool) {
        self.title = title
        self.isChecked = isChecked
    }
}
