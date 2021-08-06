//
//  BookManager.swift
//  BookManager
//
//  Created by 강은묵 on 2021/08/06.
//

import Foundation


class BookManager{
    var booklist = [Book]()
    
    func RegisterBook(bookObject:Book){
        booklist += [bookObject]
        
    }
    
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in booklist {
            strTemp += "Name : \(bookTemp.name) \n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "------------------\n"
        }
        return strTemp
    }
    
    func countBooks() -> Int {
        return booklist.count
    }
    
    func searchBook(name:String) -> String?{
        var strTemp = ""
        for bookTemp in booklist {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name) \n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)\n"
                strTemp += "------------------\n"
                return strTemp
                }
        }
        return nil
    }
    
    func removeBook(name:String){
        for (index,value) in booklist.enumerated() {
            if value.name == name {
                booklist.remove(at: index)
            }
        }

    }
    
}
