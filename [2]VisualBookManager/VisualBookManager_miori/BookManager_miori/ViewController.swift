//
//  ViewController.swift
//  BookManager_miori
//
//  Created by miori Lee on 2021/08/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var authorTF: UITextField!
    @IBOutlet weak var genreTF: UITextField!
    @IBOutlet weak var cntLabel: UILabel!
    
    var book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
    var book2 = Book(name: "수학의 정석", genre: "과학", author: "홍성대")
    var book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
    
    var myBookManager : BookManager = BookManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _ = [book1, book2, book3].map {$0.bookPrint()}
        
        registerTheBook()
        
        print("내 모든 책들 :\n\(myBookManager.showAllBooks())")
        print("책 수들 : \(myBookManager.cntBook())")
        
        serarchTheBook("수학의 정석")
        serarchTheBook("어린왕자")
        
        myBookManager.removeBook(name: "햄릿")
        print("updated 책 수들 : \(myBookManager.cntBook())")
        
        cntLabel.text = "\(myBookManager.cntBook())"
    }
    
    @IBAction func registerAction(_ sender:Any){
        var bookTemp = Book()
        
        bookTemp.name = nameTF.text!
        bookTemp.author = authorTF.text!
        bookTemp.genre = genreTF.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTF.text!) has been registered."
        cntLabel.text = "\(myBookManager.cntBook())"
    }
    
    //살짝 수정
    @IBAction func searchAction(_ sender:Any){
        if let resultBook = myBookManager.searchBook(name: nameTF.text!) {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "error"
        }
    }
    
    @IBAction func removeAction(_ sender:Any){
        myBookManager.removeBook(name: nameTF.text!)
        outputTextView.text = "\(nameTF.text!) removed."
        cntLabel.text = "\(myBookManager.cntBook())"
    }
    
    @IBAction func showAllBooksAction(_ sender: Any) {
//        print("showAllBookAction")
        outputTextView.text = myBookManager.showAllBooks()
        
    }


}

extension ViewController {
    func registerTheBook() {
        _ = [book1,book2,book3].map {myBookManager.registerBook(bookObject: $0)}
    }
    
    //MARK: 책을 찾는 함수
    // 파라미터로 찾을 책을 받을수 있게끔 짜보았습니다
    func serarchTheBook(_ searchFor : String) -> Bool {
        if let searchResult = myBookManager.searchBook(name: searchFor){
            print("찾은결과: \n\(searchResult)")
            return true
        } else {
            print("그런책 없음!!")
            return false
        }
    }
}



