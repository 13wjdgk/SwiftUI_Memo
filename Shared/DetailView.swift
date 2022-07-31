//
//  DetailView.swift
//  SwiftUI_memo
//
//  Created by 김가은 on 2022/07/31.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo : Memo
    
    @EnvironmentObject private var store : MemoStore
    @State private var showComposer : Bool = false
    var body: some View {
        VStack {
            ScrollView{
                VStack{
                    HStack{
                        Text(memo.content).padding()
                        Spacer(minLength: 0)
                    }
                    
                    
                    Text(memo.insertDate , style:.date).padding().font(.footnote).foregroundColor(.secondary)
                }
            }
            
        }
        .navigationTitle("View Memo")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "square.and.pencil")
                }

            }
        }
        .sheet(isPresented: $showComposer) {
            ComposeView(memo: memo)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(memo : Memo(content: "hi"))
                .environmentObject(MemoStore())
        }
        
    }
}
