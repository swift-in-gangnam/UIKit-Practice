# 1. 책 관리 프로그램 
by miori

## 🛠 mvvm pattern
- mvvm 패턴을 잘 모르지만 적용해보려고 노력을 해보았어요.
- mvvm 은 아래와 같이 이루어져있어요.
  - Model
  - View 
  - ViewModel

### MVVM : Model
1. UI에 독립적
2. 데이터 캡술화
3. Model이 변경됐을 때 ViewModel에게 알린다

### MVVM : ViewModel
1. ViewModel은 Model을 참조한다

### MVVM : View
1. 말그대로 view


## 🛠 file structure
```bash
├── Model
│   └──  Book.swift
├── ViewModel
│   └──  BookManager.swift
└── ViewController.swift
``` 

## 🚀 코드 변경
- 문법책에서 급 기억나는 거는 몇개 수정해보았어요.
<br>

1. BookManager.swift
```swift
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
 ```
 
   2. Book.swift
```swift
    // map을 써서 가독성을 높였고
    // enumerated 로 index에 접근할 수 있게끔 해봤어요
    func bookPrint() {
        _ = [name,genre,author].enumerated().map {print("\($0.0) : \($0.1)")}
    }
 ```
 
   3. ViewController.swift (main.swift)
```swift
    //MARK: 책을 찾는 함수
    // 파라미터로 찾을 책을 받을수 있게끔 짜보았습니다
    func serarchTheBook(_ searchFor : String) {
        if let searchResult = myBookManager.searchBook(name: searchFor){
            print("찾은결과: \n\(searchResult)")
        } else {
            print("그런책 없음!!")
        }
    }
 ```
 - 호출은
 ```swfit
        serarchTheBook("수학의 정석")
        serarchTheBook("어린왕자")
```
