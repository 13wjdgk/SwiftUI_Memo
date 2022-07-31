//
//  Memo.swift
//  SwiftUI_memo
//
//  Created by 김가은 on 2022/07/31.
//

import Foundation
import SwiftUI

class Memo : Identifiable,ObservableObject{
    // Identifiable : 데이터를 리스트에 쉽게 바인딩
    // ObservableObject : 뷰를 자동으로 업데이트할 때 필요
    let id : UUID //Identifiable에 필요한 속성
    @Published var content : String //메모리를 저장하는 속성(Published 속성을 추가하면 새로운 값이 저장될때마다 바인딩 된 UI가 자동으로 업데이트된다)
    let insertDate : Date
    init(content : String ,insertDate:Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
