## π Section2 - λμ κ΄λ¦¬ νλ‘κ·Έλ¨

### π File Structure

```bash
βββ book-manager
    βββ book-manager
    βΒ Β  βββ Book.swift
    βΒ Β  βββ BookManager.swift
    βΒ Β  βββ main.swift
    βββ book-manager.xcodeproj
```

<br>

### π Remind Swift-Grammar

#### Array Initialize

```swift
// Same Expression
var bookList = [Book]()  // κ°μμμλ νμμΆλ‘ μ μ¬μ©
var bookList: Array<Book> = Array<Book>()
var bookList: [Book] = [Book]()
```

<br>

#### Array Method - append()

```swift
// Same Expression
bookList += [bookObject] // κ°μμμλ + μ°μ°μ μ¬μ©
bookList.append(bookObject)
```

<br>

#### Array Method - enumerated()

- (Index, value) λ‘ μ΄λ£¨μ΄μ§ νν λ¦¬ν΄
- κ°κ³Ό μΈλ±μ€κ° λͺ¨λ νμν  λ μ¬μ©

```swift
func removeBook(name: String){
    for (index, value) in bookList.enumerated(){ // enumerated : ννλ‘ μΈλ±μ€μ κ°μ λκ²¨μ€
        if value.name == name { // λ°°μ΄μ κ° μ¬μ©
            bookList.remove(at: index) // λ°°μ΄μ μΈλ±μ€ μ¬μ©
        }    
    }
}
```