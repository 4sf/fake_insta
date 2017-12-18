# Fake Instagram

## 0. Rails
```console
# 새로운 프로젝트 만들기
rails new [프로젝트이름] --skip-bundle

# 컨트롤러 생성
rails generate controller [컨트롤러이름(복수)]

# 모델 생성
rails generate model [모델이름(단수)]

# 컨트롤러 / 모델 삭제
rails destroy controller [컨트롤러이름]
rails destroy model [모델이름]

# migration을 통해 데이터 테이블 생성
rake db:migrate

# 서버 구동
rails server -b 0.0.0.0 # rs로 alias 걸어줌

# 콘솔창 띄우기
rails console
```

## 1. User
- rails g controller users
- rails g model User
- routes
```
get '/signup' => 'users#signup' # 회원가입 <form>으로 정보 받아서 /register로 넘겨준다. (email, password)
get '/register' => 'users#register' # 날아온 정보를 User DB에 저장한다.
get '/user_list' => 'users#list' # 모든 유저의 정보를 보여준다.

## 과제
get '/login' => 'users#login' # 로그인 창에서 로그인 정보를 받아서 /login_process로 넘겨준다.
get '/login_process' => 'users#login_process' # 로그인 시키는 로직을 통해 로그인을 시킨다. (session[:user_id])
get '/logout' => 'users#logout' # 로그아웃 (session.clear) 
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
