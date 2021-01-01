//
//  RowItem.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

struct RowItem: View {
    let itemName: String
    var isChecked: Bool

    var body: some View {
        HStack {
            if isChecked {
                Text("☑")
                Text(itemName)
                    .strikethrough(isChecked, color: Color.gray)
                    .fontWeight(.ultraLight)
            } else {
                Text("□")
                Text(itemName)
                    .strikethrough(isChecked)
            }
        }
    }
}

struct RowItem_Previews: PreviewProvider {
    static var previews: some View {
        RowItem(itemName: "Item>>>>>>>>>>>>>>>>>>>>>>", isChecked: true)
    }
}
