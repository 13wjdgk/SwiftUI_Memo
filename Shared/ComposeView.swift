//
//  ComposeView.swift
//  SwiftUI_memo
//
//  Created by 김가은 on 2022/07/31.
//

import SwiftUI

struct ComposeView: View {
    @EnvironmentObject var store : MemoStore
    @Environment(\.dismiss) var dismiss
    @State private var content : String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $content).padding()
            }
            .navigationTitle("New memo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Text("cancel")
                    }

                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button {
                        store.insert(memo: content)
                        dismiss()
                    } label: {
                        Text("Done")
                    }

                }
            }
        }
    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView().environmentObject(MemoStore())
    }
}
