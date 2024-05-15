---
lang: ko                # 변경하지 말아주세요
layout: blog_post       # 변경하지 말아주세요
title:                  # (한국어) 제목을 적어주세요
author:                 # (한국어) 작성자 이름을 적어주세요 / 미작성 시 기본값(클라우드 유랑단)으로 표시됩니다
thumbnail:              # (썸네일 존재시) 파일 이름을 적어주세요. 해당 파일은 /assets/blog/ 경로에 있어야 합니다.
published: false        # 공개 여부입니다. 공개하시려면 true로 변경해주세요.
---

## 블로그 글 작성 시 주의사항

헤딩은 h2부터 사용해주세요. h1은 제목으로 사용하고 있습니다.

글 내용을 Markdown 또는 HTML 형태로 여기에 적어주시면 됩니다.


## 이미지 또는 파일 첨부

### 경로 생성

블로그 글에서 사용하는 이미지는 `/assets/blog/` 경로에 아래에, 파일 이름에서 년/월/일을 제거한 `TITLE-HERE` 디렉토리를 만들고 넣어주세요.

예. 블로그 글의 파일명이`2020-01-01-Hello-World.md` 인 경우,  `/assets/blog/Hello-World/` 디렉토리를 만들고 파일을 복사해주세요.

### 이미지 첨부

이미지를 첨부해야 한다면, 전체 경로를 지정하여 다음과 같이 불러올 수 있습니다.
```
![이미지 설명](/assets/blog/TITLE-HERE/파일이름.확장자)

예. ![이미지 설명](/assets/blog/Hello-World/image.png)
```

이미지 크기를 지정하셔야 한다면, HTML 형태로 다음과 같이 지정할 수 있습니다.
```
<img src="/assets/blog/TITLE-HERE/파일이름.확장자" width="가로 크기(px)" height="세로 크기(px)" alt="이미지 설명" />

예. <img src="/assets/blog/Hello-World/image.png" width="360" alt="이미지 설명" />
```

