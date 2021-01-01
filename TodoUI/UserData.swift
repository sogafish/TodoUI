//
//  UserData.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

class UserData: ObservableObject {
    // 仮
    @Published var tasks = [
        Task(title: "TaskA", isChecked: false),
        Task(title: "TaskB", isChecked: true),
        Task(title: "TaskC", isChecked: false)
    ]
    
    @Published var isTodoInputEditting = false
}
