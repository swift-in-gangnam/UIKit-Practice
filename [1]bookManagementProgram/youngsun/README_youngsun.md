## πμΉμ2 λμκ΄λ¦¬νλ‘κ·Έλ¨

### π νμΌκ΅¬μ‘°

```bash
βββ BookManager
    βββ BookManager
    βΒ Β  βββ Book.swift
    βΒ Β  βββ BookManager.swift
    βΒ Β  βββ main.swift
    βββ BookManager.xcodeproj
```

- **Book.swift**
  - <u>`Book` κ΅¬μ‘°μ²΄</u> - `name`, `genre`, `author` λ³μ
- **BookManager.swift**
  - <u>`BookManager` ν΄λμ€</u> - `Book` λ°°μ΄μΈ `bookList` λ³μ / `showAllBooks`λ©μλ / `countBooks`λ©μλ / `searchBook` λ©μλ / `removeBook` λ©μλ 

---

### π λ¬Έλ²

#### λ°°μ΄ μ μΈ

```swift
//λͺ¨λ κ°μ νν
var bookList = [Book] () //κ°μμμλ νμμΆλ‘ μ μ¬μ©
var bookList: Array<Book> = Array<Book>()
var bookList: [Book] = [Book]()
```



#### λ°°μ΄ μμ μΆκ°

```swift
//κ°μ νν
bookList += [bookObject] //κ°μμμλ +μ°μ°μ μ¬μ©
bookList.append(bookObject)
```



#### λ°°μ΄μ enumerated()

- (Index, value) λ‘ μ΄λ£¨μ΄μ§ νν λ¦¬ν΄
- κ°κ³Ό μΈλ±μ€κ° λͺ¨λ νμν  λ μ¬μ©

```swift
 func removeBook(name: String){
        for (index, value) in bookList.enumerated(){ //enumerated : ννλ‘ μΈλ±μ€μ κ°μ λκ²¨μ€
            if value.name == name { //λ°°μ΄μ κ° μ¬μ©
                bookList.remove(at: index) //λ°°μ΄μ μΈλ±μ€ μ¬μ©
            }
            
        }
    }
```

