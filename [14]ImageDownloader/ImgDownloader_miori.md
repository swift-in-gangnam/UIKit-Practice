# Image Downlodaer

- image는 mainThread 로 알고 있었는데..
```swift
URLSession.shared.dataTask(with: url) {

    DispatchQueue.main.async {
        self.imgView.image = ""
    }
}
```