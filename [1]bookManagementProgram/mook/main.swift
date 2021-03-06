//
//  main.swift
//  BookManager
//
//  Created by 강은묵 on 2021/08/06.
//

import Foundation

var book1 = Book(name: "햄릿", genre: "비극", author: "세익스피어")
//book1.bookPrint()

var book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "헤밍웨이")
//book2.bookPrint()

var book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
//book3.bookPrint()

var myBookManager = BookManager()

myBookManager.RegisterBook(bookObject: book1)
myBookManager.RegisterBook(bookObject: book2)
myBookManager.RegisterBook(bookObject: book3)

print(myBookManager.showAllBooks())

print("number of books: \(myBookManager.countBooks())")

//var searchResult = myBookManager.searchBook(name: "햄릿")
//
//if searchResult != nil{
//    print("\(searchResult!) 를 찾았습니다.")
//}else{
//    print("찾으시는 책이 없는데요^^;")
//}

if let searchResult = myBookManager.searchBook(name: "햄릿"){
    print("\(searchResult) 를 찾았습니다.")
}else{
    print("찾으시는 책이 없는데요^^;")
}


myBookManager.removeBook(name: "죄와벌")
print(myBookManager.showAllBooks())
print("number of books: \(myBookManager.countBooks())")
