## ๐ ์น์7 - ๋ฏธ๋ ๋ธ๋ผ์ฐ์ 

- `Segmented Control` ๊ณผ `WebView` ๋ก ํ์ด์ค๋ถ, ํธ์ํฐ, ์ ํ, ๊ตฌ๊ธ ์ฌ์ดํธ์ ์ ์ํ๋ ๋ฏธ๋ ๋ธ๋ผ์ฐ์  ์ฑ

- `toolBar` ๋ก ์น์ฌ์ดํธ ๋ค๋ก๊ฐ๊ธฐ, ์์ผ๋ก๊ฐ๊ธฐ, ์๋ก๊ณ ์นจ, ์ทจ์ ๊ฐ๋ฅ

### ๐ ํ์ผ ๊ตฌ์กฐ



---

### ๐ ์คํ ํ๋ฉด

<p align="center">
  <img src = "./image/capture.png" width="60%">
</p>




---

### ๐ ๊ฐ์ ํต์ฌ

#### ๐ WebView

- **URL load**

```swift
mainWebView.load(URLRequest(url: URL(string: urlString)!))
```

- **goBack, goForward, stopLoading, reload**

```swift
mainWebView.goBack()
mainWebView.goForward()
mainWebView.stopLoading()
mainWebView.reload()
```

- **`webView` ๊ฐ ๋ค ๋ก๋๊ฐ ๋๋ฉด `Activity Indicator View`  ๋ฉ์ถ๊ฒ ํ๊ณ  ์ถ์ ๋**

  -  `WKNavigationDelegate` ์ฑํ

  ```swift
   func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
          spinningActivityIndicatorView.stopAnimating()
      }
      
      func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
          spinningActivityIndicatorView.startAnimating()
      }
  ```

  - `mainWebView.navigationDelegate = self`



#### ๐ Toolbar 

- `BarButtonItem` ์ผ๋ก ์์ ์ถ๊ฐ ๊ฐ๋ฅ
- `Flexible space` ๋ก ๊ณต๋ฐฑ ๋ฃ๊ธฐ ๊ฐ๋ฅ





















