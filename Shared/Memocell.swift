//
//  Memocell.swift
//  SwiftUI_memo
//
//  Created by 김가은 on 2022/07/31.
//

import SwiftUI

struct Memocell: View {
    @ObservedObject var memo : Memo
    var body: some View {
        VStack(alignment: .leading){
            Text(memo.content).font(.body).lineLimit(1)
            Text(memo.insertDate,style: .date).font(.caption).foregroundColor(.secondary)
        }
    }
}

struct Memocell_Previews: PreviewProvider {
    static var previews: some View {
        Memocell(memo: Memo(content: "Test"))
    }
}
