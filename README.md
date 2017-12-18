# Fake Instagram

## 1. User
- rails g controller users
- rails g model User
- routes
```
get '/signup' => 'users#signup' # 회원가입 <form>으로 정보 받아서 /register로 넘겨준다. (email, password)
get '/register' => 'users#register' # 날아온 정보를 User DB에 저장한다.
get '/user_list' => 'users#list' # 모든 유저의 정보를 보여준다.
```

## 2. Home controller
### 1. /lotto
- 랜덤 로또 번호를 출력해주는 액션을 만드세요
- get '/lotto' => 'home#lotto'

### 2. /lunch
- 랜덤 메뉴를 출력해주는 액션을 만드세요
- get '/lunch' => 'home#lunch'

### 3. /search
- fake naver search를 해주는 액션을 만드세요
- get '/search' => 'home#search'
- search.erb -> 검색어를 받아 네이버 검색 결과를 보여주는 <form>을 만들어준다.
