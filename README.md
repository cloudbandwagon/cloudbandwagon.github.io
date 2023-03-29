# 클라우드 유랑단 홈페이지

## 소개

- [클라우드 유랑단 홈페이지](https://bandwagon.cloud/)는 [Jekyll](https://jekyllrb.com/)를 사용하여 만들었으며, [GitHub Pages](https://pages.github.com/)로 호스팅합니다.
- 본 저장소의 `main` 브랜치에 반영된 내용은 [GitHub Actions](https://github.com/cloudbandwagon/cloudbandwagon.github.io/actions)가 자동으로 빌드하여 [gh-pages](https://github.com/cloudbandwagon/cloudbandwagon.github.io/tree/gh-pages) 브랜치에 반영합니다.


## 개발 환경 구축하기

### GitHub 코드스페이스

아래는 [GitHub 코드스페이스](https://docs.github.com/ko/codespaces/overview)를 이용해서 개발 환경을 구축하는 방법입니다.

#### 0. 저장소 포크(fork)

- 클라우드 유랑단 홈페이지 저장소를 자신의 GitHub 계정으로 포크(fork)합니다.

#### 1. GitHub 코드스페이스 실행

- 아래 그림과 같이 `[Create codespace on main]` 버튼을 클릭합니다

  ![Create a new GitHub Codespace instance](./images/gh-codespace-create-instance.png)

#### 2. Jekyll 실행

- 아래 명령어를 통해 Jekyll을 실행시킵니다.

  ```bash
  bundle exec jekyll serve
  ```

- 아래 그림과 같이 `[Open in Browser]` 버튼을 클릭해서 웹사이트를 확인합니다.

  ![Open in browser](./images/gh-codespace-open-in-browser.png)

- 만약 `_config.yml` 파일 등을 수정하는 경우 `bundle exec jekyll serve`를 다시 실행하여 반영해야 합니다.

### Mac OS

아래는 macOS에서 개발 환경을 구축하는 방법입니다.

#### 0. 저장소 복제(clone)

- 클라우드 유랑단 홈페이지 저장소를 복제한 뒤, 복제한 저장소 디렉토리로 진입합니다.

  ```bash
  git clone https://github.com/cloudbandwagon/cloudbandwagon.github.io.git
  cd cloudbandwagon.github.io
  ```

#### 1. Ruby 설치

- [homebrew](https://brew.sh/)를 사용하여 여러 Ruby 버전을 사용할 수 있는 `rbenv`를 설치합니다.

  ```bash
  brew install rbenv
  ```

- `rbenv`를 사용하여 본 저장소에서 사용 중인 Ruby 버전에 맞는 Ruby를 설치하고, 설정합니다.

  ```bash
  rbenv install `cat .ruby-version` # Ruby 설치
  rbenv local `cat .ruby-version`   # Ruby 설정
  ```

#### 2. Jekyll 설치

- `bundler`를 설치하고, Jekyll 및 필요 패키지들을 설치합니다.

  ```bash
  gem install jekyll bundler
  bundle install
  ```

#### 3. Jekyll 실행

- Jekyll을 실행하고, `http://localhost:4000`으로 접속하여 확인합니다.

  ```bash
  bundle exec jekyll serve
  open http://localhost:4000
  ```

- `_config.yml` 파일 등을 수정하는 경우 `jekyll serve`를 다시 실행하여 반영하셔야 합니다.


## 사용법

### 메인 페이지

- `_config.yml` 파일의 `main` 섹션에 새로운 `slide` 값을 추가하거나 기존 값을 수정합니다.
- 아래와 같이 `title`과 `description`을 입력하면 새로운 메인 화면 내용이 추가됩니다.

  ```yaml
  main:
    slide:
      - title: 여러분 곁의 클라우드 유랑단
        description: 클라우드 유랑단은 다양성을 인정하고 정보 격차 해소를 위해 노력합니다. <br />열린 마음으로 서로를 존중하며 다 같이 성장하는 따뜻한 커뮤니티가 되도록 함께 해주세요!
        # link: # 생략하면 '더 보기' 버튼이 사라집니다.
      # - title: # 큰 글씨입니다.
      #   description: # 작은 글씨입니다. 줄 바꿈은 <br />을 넣어주세요.
      #   link: # https:// 를 포함한 url을 적어주세요. 생략하면 '더 보기' 버튼이 사라집니다.
  ```

### 행사 추가하기

- `_events/` 디렉토리 아래에 새로운 행사 파일을 추가하거나, 기존 행사 정보를 변경할 수 있습니다.
- 새로운 행사 추가를 위해서는 `_template.md` 파일을 복사하여 사용합니다.
  - 파일명은 `YYYY-MM-DD-간단한지역또는행사명.md` 형식으로 작성합니다. (예. `2023-02-18-DDD.md`)
  - 행사 소개 사진 파일명은 동일하게 지정하여 `assets/img/events/thumbnail/` 에 저장합니다. (예. `2023-02-18-DDD.png`)

    ```markdown
    ---
    title: # 행사 제목
    date:  # 행사 일정, YYYY-mm-dd
    link:  # 행사 링크
    description: >-
      # 간략한 행사 소개, 1줄 가량
    ---
    ```

### 유랑단원 추가하기

- `_members/` 디렉토리 아래에 새로운 유랑단원 파일을 추가하거나, 기존 유랑단원 정보를 변경할 수 있습니다.
- 새로운 단원 추가를 위해서는 `_template` 파일을 복사하여 사용합니다.
  - 파일명은 `영문이름-영문성.md` 파일을 복사하여 사용합니다. (예. `justin-yoo.md`)
  - 유랑단원의 사진 파일명은 동일하게 지정하여 `assets/img/members/` 에 저장합니다. (예. `justin-yoo.png`)

    ```markdown
    ---
    # 기본 정보
    order:      # 정렬 순서 (숫자)
    name:       # 한글 이름
    from:       # 소속
    profile:    # 사진 파일명 (300px x 300px)
  
    # 소셜 정보 (최대 4개)
    github:     # GitHub ID
    twitter:    # Twitter ID (@ 제외)
    linkedin:   # Linkedin ID
    homepage:   # 홈페이지 주소 (https:// 제외)
    mediaum:    # 미디엄 주소 (@ 제외)
    youtube:    # Youtube Channel ID (@ 제외)
    ---
    ```
