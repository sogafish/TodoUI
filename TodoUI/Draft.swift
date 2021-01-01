//
//  Draft.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

struct Draft: View {
    @State var itemTitle = ""
    @EnvironmentObject var userData: UserData
    
    func AddTodo() {
        self.userData.isTodoInputEditting = false

        let newTask = Task(title: self.itemTitle, isChecked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.itemTitle = ""
    }
    
    var body: some View {
        TextField(
            "Input New Todo",
            text: $itemTitle,
            onCommit: {
                self.AddTodo()
            }
        )
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
            .environmentObject(UserData())
    }
}
