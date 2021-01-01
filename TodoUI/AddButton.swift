//
//  AddButton.swift
//  TodoUI
//
//  Created by k.soga on 2021/01/01.
//

import SwiftUI

struct AddButton: View {
    var onPress: () -> Void
    
    var body: some View {
        Button(action: onPress) {
            Text("＋").font(.title)
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton(onPress: {})
    }
}
