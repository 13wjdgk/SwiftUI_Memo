//
//  MainListView.swift
//  SwiftUI_memo
//
//  Created by 김가은 on 2022/07/31.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store : MemoStore //뷰가 생성되는 시점에 공유데이터를 확인하고, store 타입과 동일한 타입을 가진 인스턴스가 있다면 속성을 해당 인스턴스로 자동 초기화한다. 하나의 데이터를 여러 뷰에 이용할 때 자주 사용
    var body: some View {
        NavigationView {
            List(store.list){ memo in
                VStack(alignment: .leading){
                    Text(memo.content).font(.body).lineLimit(1)
                    Text(memo.insertDate,style: .date).font(.caption).foregroundColor(.secondary)
                }
                
            }
            .navigationTitle("내 메모")
        }
        .listStyle(.plain)
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView().environmentObject(MemoStore())//프리뷰에서도 공유받을 데이터를 입력
    }
}