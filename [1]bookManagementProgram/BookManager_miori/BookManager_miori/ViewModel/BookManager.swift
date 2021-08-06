//
//  BookManager.swift
//  BookManager_miori
//
//  Created by miori Lee on 2021/08/06.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func registerBook(bookObject : Book) {
        bookList += [bookObject]
    }
    
    func showAllBooks() -> String {
        var strTmp = ""
        for bookTmp in bookList {
            strTmp += "Name : \(bookTmp.name)\n"
            strTmp += "Genre : \(bookTmp.genre)\n"
            strTmp += "Author : \(bookTmp.author)\n"
            strTmp += "--------------\n"
        }
        return strTmp
    }
    
    func cntBook() -> Int {
        return bookList.count
    }
    
    func searchBook(name : String) -> String? {
        var strTmp = ""
        for bookTmp in bookList {
            if bookTmp.name == name {
                strTmp += "Name : \(bookTmp.name)\n"
                strTmp += "Genre : \(bookTmp.genre)\n"
                strTmp += "Author : \(bookTmp.author)\n"
                strTmp += "--------------\n"
                return strTmp
            }
        }
        return nil
    }
    
    //MARK: For Each + enumerated 로 도전해봤어요
    // $0 : index
    // $1 : 요소들
    func removeBook(name : String) {
        bookList.enumerated().forEach {
            if $1.name == name {
                bookList.remove(at: $0)
            }
        }
    }
}
