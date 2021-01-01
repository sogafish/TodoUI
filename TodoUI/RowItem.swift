//
//  RowItem.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

struct RowItem: View {
    let itemName: String

    var body: some View {
        HStack {
            Text("□")
            Text(itemName)
        }
    }
}

struct RowItem_Previews: PreviewProvider {
    static var previews: some View {
        RowItem(itemName: "Yo")
    }
}
