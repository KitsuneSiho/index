<%@ page import="java.io.File" %>
<%@ page import="jakarta.servlet.ServletContext" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>왜 인텔리제이는 index만을 고집하는가?</title>
    <style>
        @-webkit-keyframes text-flicker-in-glow {
            0% {
                opacity: 0;
            }
            10% {
                opacity: 0;
                text-shadow: none;
            }
            10.1% {
                opacity: 1;
                text-shadow: none;
            }
            10.2% {
                opacity: 0;
                text-shadow: none;
            }
            20% {
                opacity: 0;
                text-shadow: none;
            }
            20.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.25);
            }
            20.6% {
                opacity: 0;
                text-shadow: none;
            }
            30% {
                opacity: 0;
                text-shadow: none;
            }
            30.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            30.5% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            30.6% {
                opacity: 0;
                text-shadow: none;
            }
            45% {
                opacity: 0;
                text-shadow: none;
            }
            45.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            50% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            55% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            55.1% {
                opacity: 0;
                text-shadow: none;
            }
            57% {
                opacity: 0;
                text-shadow: none;
            }
            57.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35);
            }
            60% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35);
            }
            60.1% {
                opacity: 0;
                text-shadow: none;
            }
            65% {
                opacity: 0;
                text-shadow: none;
            }
            65.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            75% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            75.1% {
                opacity: 0;
                text-shadow: none;
            }
            77% {
                opacity: 0;
                text-shadow: none;
            }
            77.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.4), 0 0 110px rgba(255, 255, 255, 0.2), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            85% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.4), 0 0 110px rgba(255, 255, 255, 0.2), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            85.1% {
                opacity: 0;
                text-shadow: none;
            }
            86% {
                opacity: 0;
                text-shadow: none;
            }
            86.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.6), 0 0 60px rgba(255, 255, 255, 0.45), 0 0 110px rgba(255, 255, 255, 0.25), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            100% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.6), 0 0 60px rgba(255, 255, 255, 0.45), 0 0 110px rgba(255, 255, 255, 0.25), 0 0 100px rgba(255, 255, 255, 0.1);
            }
        }
        @keyframes text-flicker-in-glow {
            0% {
                opacity: 0;
            }
            10% {
                opacity: 0;
                text-shadow: none;
            }
            10.1% {
                opacity: 1;
                text-shadow: none;
            }
            10.2% {
                opacity: 0;
                text-shadow: none;
            }
            20% {
                opacity: 0;
                text-shadow: none;
            }
            20.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.25);
            }
            20.6% {
                opacity: 0;
                text-shadow: none;
            }
            30% {
                opacity: 0;
                text-shadow: none;
            }
            30.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            30.5% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            30.6% {
                opacity: 0;
                text-shadow: none;
            }
            45% {
                opacity: 0;
                text-shadow: none;
            }
            45.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            50% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            55% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.45), 0 0 60px rgba(255, 255, 255, 0.25);
            }
            55.1% {
                opacity: 0;
                text-shadow: none;
            }
            57% {
                opacity: 0;
                text-shadow: none;
            }
            57.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35);
            }
            60% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35);
            }
            60.1% {
                opacity: 0;
                text-shadow: none;
            }
            65% {
                opacity: 0;
                text-shadow: none;
            }
            65.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            75% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.35), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            75.1% {
                opacity: 0;
                text-shadow: none;
            }
            77% {
                opacity: 0;
                text-shadow: none;
            }
            77.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.4), 0 0 110px rgba(255, 255, 255, 0.2), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            85% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.55), 0 0 60px rgba(255, 255, 255, 0.4), 0 0 110px rgba(255, 255, 255, 0.2), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            85.1% {
                opacity: 0;
                text-shadow: none;
            }
            86% {
                opacity: 0;
                text-shadow: none;
            }
            86.1% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.6), 0 0 60px rgba(255, 255, 255, 0.45), 0 0 110px rgba(255, 255, 255, 0.25), 0 0 100px rgba(255, 255, 255, 0.1);
            }
            100% {
                opacity: 1;
                text-shadow: 0 0 30px rgba(255, 255, 255, 0.6), 0 0 60px rgba(255, 255, 255, 0.45), 0 0 110px rgba(255, 255, 255, 0.25), 0 0 100px rgba(255, 255, 255, 0.1);
            }
        }
        @-webkit-keyframes text-focus-in {
            0% {
                -webkit-filter: blur(12px);
                filter: blur(12px);
                opacity: 0;
            }
            100% {
                -webkit-filter: blur(0px);
                filter: blur(0px);
                opacity: 1;
            }
        }
        @keyframes text-focus-in {
            0% {
                -webkit-filter: blur(12px);
                filter: blur(12px);
                opacity: 0;
            }
            100% {
                -webkit-filter: blur(0px);
                filter: blur(0px);
                opacity: 1;
            }
        }
        .text-flicker-in-glow-1 {
            -webkit-animation: text-flicker-in-glow 4s linear both;
            animation: text-flicker-in-glow 2s linear both;
        }
        .text-flicker-in-glow-2 {
            -webkit-animation: text-flicker-in-glow 4s linear both;
            animation: text-flicker-in-glow 1s linear both;
        }
        .text-flicker-in-glow-3 {
            -webkit-animation: text-flicker-in-glow 4s linear both;
            animation: text-flicker-in-glow 3s linear both;
        }
        .text-focus-in {
            -webkit-animation: text-focus-in 1s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
            animation: text-focus-in 1s cubic-bezier(0.550, 0.085, 0.680, 0.530) both;
        }
        body {
            background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
            overflow: hidden;
            filter: drop-shadow(0 0 10px white);
        }
        .mainContent {
            font-family: 'Nanum Gothic', sans-serif;
            background-color: rgba(0, 0, 0, 0);
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;

        }
        h1{
            font-family: 'Nanum Gothic', sans-serif;
            color: white;
            font-size: 40px;
        }
        .container {
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.27);
            background-color: #18202a;
            margin-right: 15px;
            min-width: 500px;
            max-width: 500px;
            min-height: 800px;
            max-height: 800px;
        }

        .sidebar-weather {
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            min-width: 480px;
            max-width: 480px;
            min-height: 650px;
            max-height: 650px;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.27);
            background-color: #18202a;
            margin-left: 15px;
            margin-top: 5px;

        }
        .title{
            margin-left: -200px;
            margin-top: -650px;
            margin-right: 100px;
        }
        .sidebar-info-link {
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            min-width: 480px;
            max-width: 480px;
            max-height: 95px;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.27);
            background-color: #18202a;
            margin-left: 15px;
            overflow: hidden;
            margin-top: 20px;
        }
        .sidebar-search-bar {
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            min-width: 360px;
            max-width: 360px;
            max-height: 40px;
            box-shadow: 0 0 10px rgba(93, 188, 255, 0.51);
            background-color: #383838;
            margin-left: 15px;
        }

        h3 {
            color: #66bfff;
        }

        hr {
            color: #535960FF;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 200px;
            margin-right: 10px;
            background-color: #18202a;
            color: white;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            background-color: #535960;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #4495b6;
        }

        /*최대 길이가 넘으면 스크롤이 생기도록 수정*/
        .link-button-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); /* 버튼의 최소 너비와 최대 너비를 설정하여 자동 조정 */
            max-height: 615px;
            overflow: scroll;
            gap: 10px; /* 버튼 간격 */
        }

        /*근데 그 스크롤이 보기 흉해서 안보이게 수정*/
        .link-button-grid::-webkit-scrollbar {
            display: none;
        }

        .link-button {
            display: inline-block;
            /*height: 40px;*/
            font-size: small;
            padding: 10px;
            text-align: center;
            background-color: #535960; /* 버튼 배경색 */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        iframe{
            border-radius: 15px;
        }

        .link-button:hover {
            background-color: #4495b6; /* 마우스 호버 시 배경색 변경 */
        }

        /*뉴스 띄우는게 어려워서 일단 링크라도ㅋㅋ*/
        .info-link {
            overflow: hidden;
            margin-top: 20px;
        }

        a:link {
            color: white; /* 원하는 색상으로 변경 */
        }

        a:visited {
            color: white;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<div class="mainContent">
<span class="title">
<h1 class="text-flicker-in-glow-1">왜</h1>
<h1 class="text-flicker-in-glow-2">인텔리제이는</h1>
    <h1 class="text-flicker-in-glow-3">index만을 고집하는가?</h1>
    </span>
    <div class="container">
        <h3 class="text-focus-in">JSP 파일 검색</h3>
        <input type="text" id="textInput" class="search">
        <button onclick="redirectToPage()">이동!</button>
        <br><br>
        <hr>
        <h3 class="text-focus-in">현재 존재하는 JSP 파일들</h3>
        <div class="link-button-grid">
            <%
                try {
                    // webapp 폴더 경로 설정
                    ServletContext servletContext = (ServletContext) request.getServletContext();
                    String folderPath = servletContext.getRealPath("/");
                    File folder = new File(folderPath);

                    // 폴더 내의 파일 목록 가져오기
                    File[] fileList = folder.listFiles();

                    // 파일 목록이 null이 아니고 비어있지 않은 경우에만 출력
                    if (fileList != null && fileList.length > 0) {
                        for (File file : fileList) {
                            if (file.isFile() && file.getName().endsWith(".jsp")) {
            %>
            <button class="link-button"
                    onclick="goToPage('<%= request.getContextPath() %>/<%= file.getName() %>')"><%= file.getName() %>
            </button>
            <%
                    }
                }
            } else {
            %>
            <p>폴더 내에 JSP 파일이 없습니다.</p>
            <%
                    }
                } catch (Exception e) {
                    // 예외 처리
                    out.println("JSP 파일 목록을 불러오는 중 오류가 발생했습니다: " + e.getMessage());
                    e.printStackTrace();
                }
            %>
        </div>
        <script>
            // JavaScript 함수 정의
            function goToPage(url) {
                // 페이지 이동
                window.location.href = url;
            }
        </script>
    </div>
    <div style="display: flex; flex-direction: column;">
        <div class="sidebar-weather">
            <h3 class="text-focus-in">오늘의 날씨</h3>
            <iframe src="https://www.meteoblue.com/en/weather/widget/three/seoul_south-korea_1835848?geoloc=fixed&nocurrent=0&noforecast=0&days=4&tempunit=CELSIUS&windunit=KILOMETER_PER_HOUR&layout=image"  frameborder="0" scrolling="NO" allowtransparency="true" sandbox="allow-same-origin allow-scripts allow-popups allow-popups-to-escape-sandbox" style="width: 460px; height: 594px"></iframe><div><!-- DO NOT REMOVE THIS LINK --></div>
        </div>
        <%--뉴스 어려워서 일단 링크라도 달아둔 곳...--%>
        <div class="sidebar-info-link">
            <h3 class="text-focus-in">유용한 기업 소식</h3>
            <a href="https://www.nextunicorn.kr/finder?tab=investment">성장하는 기업 알아보기(넥스트 유니콘)</a>
            <br>
            <a href="https://platum.kr/">성장하는 기업 알아보기(플래텀)</a>
        </div>
    </div>
    <script>
        function redirectToPage() {
            var jspName = document.getElementById("textInput").value;
            var destinationPage;

            // 입력에 따라 목적지 페이지 결정
            destinationPage = jspName + ".jsp";

            // 목적지 페이지 존재 여부 확인
            var http = new XMLHttpRequest();
            http.open('HEAD', destinationPage, false);
            http.send();

            // 목적지 페이지가 없으면 알림 띄우고 이전 페이지로 돌아가기
            if (http.status == 404) {
                alert("파일이 없다는데요????");
                return;
            }

            // 목적지 페이지로 이동
            window.location.href = destinationPage;
        }

        //---------------검색기능 추가------------------------
        const buttons = document.querySelectorAll(".link-button")
        const search = document.querySelector(".search")

        search.addEventListener("input", function (e) {
            let target = e.target.value.toLowerCase()

            for (b of buttons) {
                if (b.innerText.toLowerCase().indexOf(target) > -1) {
                    b.style.display = ""
                } else {
                    b.style.display = "none"
                }
            }
        })
        //---------------검색기능 추가------------------------
    </script>
</div>
</body>
</html>