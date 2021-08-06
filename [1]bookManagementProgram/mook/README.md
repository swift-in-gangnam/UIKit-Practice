# 도서관리 프로그램 만들기

## MVVM 패턴 

1. 사용자가 화면에서 Action을 취하면 Command Pattern으로 View  -> ViewModel로 전달된다
2. ViewModel이 Model에게 data를 요청한다
3. Model은 요청 받은 data를 통하여 업그레이드된 data를 ViewModel로 전달한다
4. ViewModel은 응답받은 데이터를 가공해서 저장한다
5. View는 ViewModel과의 Data Binding을 통해 자동 갱신된다

## 장점

1. 유지보수가 좋다
2. 자동화된 테스팅에 적합한 모델 (View Model 과 View간의 의존성이 없기떄문)
3. 금방 적응 할 수 있는 난이도와 복잡성



## 단점

1. 단순 프로젝트 개발하기에 MVC에 비해 시간이 오래걸린다
2. 뷰모델을 설계하는것이 쉽지가 않다






