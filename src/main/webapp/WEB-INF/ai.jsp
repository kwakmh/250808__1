<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- OG Tag => 디스코드 상 미리보기 컨트롤 -->
<!-- Webfont -->

<!-- 1. 한글 사용 가능하게 설정 -->
<html>
<head>
    <title>내가 만든 챗봇</title>
    <!-- OG Tag -->
    <meta property="og:title" content="내가 다시 만든 챗봇">
    <meta property="og:description" content="Gemini 2.0 Flash로 다시 구현한 챗봇">
    <!-- Web Font -->
    <style>
       @font-face {
           font-family: 'BagelFatOne-Regular';
           src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_JAMO@1.0/BagelFatOne-Regular.woff2') format('woff2');
           font-weight: normal;
           font-style: normal;
       }
        /* body 안에 있는 텍스트들을 아래 지정한 폰트로 바꿔주겠다 */
        body {
            font-family: 'SunBatang-Light';
        }
    </style>
</head>
<body>
<!-- II. 질문을 표시 -->
<p>
    질문 : <%= request.getAttribute("question") %>
</p>
<p>
    <!-- 2. req(request) 안에 set된 'data'라는 attribute가 있다면 출력 -->
    답변 : <%= request.getAttribute("data") %> <!-- 값을 출력 -->
</p>
<!-- I. 주소창이 아니라 우리가 데이터를 화면에서 아예 전달 -->
<form method="post">
    <input name="question">
    <button>질문하기</button>
</form>
</body>
</html>