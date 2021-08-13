//
//  Book.swift
//  BookManager_miori
//
//  Created by miori Lee on 2021/08/05.
//

struct Book {
    var name : String?
    var genre : String?
    var author : String?
    
    // map을 써서 가독성을 높였고
    // enumerated 로 index에 접근할 수 있게끔 해봤어요
    func bookPrint() {
        _ = [name,genre,author].enumerated().map {print("\($0.0) : \($0.1)")}
    }
}
