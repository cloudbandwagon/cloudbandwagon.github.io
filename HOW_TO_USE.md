# 클라우드 유랑단 홈페이지 사용법

## 메인 페이지

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

## 행사 추가하기

- `_events/` 디렉토리 아래에 새로운 행사 파일을 추가하거나, 기존 행사 정보를 변경할 수 있습니다.
- 새로운 행사 추가를 위해서는 `_template.ko.md` 및 `_template.en.md` 파일을 복사하여 각각 한국어와 영어로 작성하여 사용합니다.
  - 파일명은 `YYYY-MM-DD-간단한지역또는행사명.md` 형식으로 작성합니다. (예. `2023-02-18-DDD.md`)
  - 행사 소개 사진 파일명은 동일하게 지정하여 `assets/img/events/thumbnail/` 에 저장합니다. (예. `2023-02-18-DDD.png`)

    ```markdown
    ---
    lang:  # 언어 정보 (ko 또는 en)
    title: # 행사 제목
    date:  # 행사 일정, YYYY-mm-dd
    link:  # 행사 링크
    description: >-
      # 간략한 행사 소개, 1줄 가량
    ---
    ```

## 유랑단원 추가하기

- `_members/` 디렉토리 아래에 새로운 유랑단원 파일을 추가하거나, 기존 유랑단원 정보를 변경할 수 있습니다.
- 새로운 단원 추가를 위해서는 `_template.ko.md` 및 `_template.en.md` 파일을 복사하여 각각 한국어와 영어로 작성하여 사용합니다.
  - 파일명은 `영문이름-영문성.md` 파일을 복사하여 사용합니다. (예. `justin-yoo.md`)
  - 유랑단원의 사진 파일명은 동일하게 지정하여 `assets/img/members/` 에 저장합니다. (예. `justin-yoo.png`)

    ```markdown
    ---
    lang:       # 언어 정보 (ko 또는 en)
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

## 블로그 추가하기

- `_posts/` 디렉토리 아래에 새로운 블로그 글을 작성할 수 있습니다.
- `YYYY-MM-DD-파일-제목-아무거나.md` 형태로 블로그 글을 작성해주세요.
  - 다국어 지원 글인 경우, `_posts/en` 등과 같이 언어 디렉토리에 **동일한 파일명**으로 작성해주세요.
  - 템플릿으로 작성된 `2000-01-31-TITLE-HERE.md` 파일을 복사하여 사용하셔도 됩니다.
- 아래와 같이 블로그 글 상단의 메타 정보를 작성합니다.

  ```markdown
  ---
  lang: ko                # 변경하지 말아주세요 (영어의 경우 en으로 되어 있습니다)
  layout: blog_post       # 변경하지 말아주세요
  title:                  # (한국어) 제목을 적어주세요
  author:                 # (한국어) 작성자 이름을 적어주세요 / 미작성 시 기본값(클라우드 유랑단)으로 표시됩니다
  thumbnail:              # (썸네일 존재시) 파일 이름을 적어주세요. 해당 파일은 /assets/blog/ 경로에 있어야 합니다.
  published: false        # 공개 여부입니다. 블로그 글을 공개하시려면 true로 변경해주세요.
  ---
  ```

- 파일 내용은 Markdown 또는 HTML으로 작성하시면 됩니다.
  - 블로그 글에 포함하는 이미지 또는 파일은 `/assets/blog/` 경로에 디렉토리를 생성하고 저장해주세요. (위 메타의 thumbnail 값 제외)
  - 예. `2000-01-31-TITLE-HERE.md`에 포함할 파일은 `/assets/blog/TITLE-HERE/` 디렉토리에 저장해주세요.
