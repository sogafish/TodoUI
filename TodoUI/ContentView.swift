//
//  ContentView.swift
//  TodoUI
//
//  Created by k.soga on 2020/12/31.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    
    func DeleteCheckedItems() {
        let uncheckedItems = self.userData.tasks.filter({!$0.isChecked})
        self.userData.tasks = uncheckedItems
    }
    
    func ToggleisInputEditting() {
        self.userData.isTodoInputEditting.toggle()
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }

                        self.userData.tasks[index].isChecked.toggle()
                    }, label: {
                        RowItem(itemName: task.title, isChecked: task.isChecked)
                    })
                }
                
                if self.userData.isTodoInputEditting {
                    Draft()
                } else {
                    AddButton(onPress: ToggleisInputEditting)
                }
            }
            .navigationTitle(Text("Todo"))
            .navigationBarItems(trailing: DeleteButton(deleteFunc: DeleteCheckedItems))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
