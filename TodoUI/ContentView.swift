//
//  ContentView.swift
//  TodoUI
//
//  Created by k.soga on 2020/12/31.
//

import SwiftUI

struct ContentView: View {
    var userData = UserData()

    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    RowItem(itemName: task.title, isChecked: task.isChecked)
                }
                Text("＋").font(.title)
            }
            .navigationTitle(Text("Todo"))
//            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
