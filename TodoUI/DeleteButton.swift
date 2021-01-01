//
//  DeleteButton.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

struct DeleteButton: View {
    var deleteFunc: () -> Void

    var body: some View {
        Button(action: deleteFunc, label: {
            Text("Delete")
        })
    }
}

struct DeleteButton_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButton(deleteFunc: {})
    }
}
