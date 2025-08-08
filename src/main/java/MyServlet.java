import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// Servlet -> HttpServlet 상속
@WebServlet("/chat") // '/chat'라고 하는 요청을 받을 수 있음
public class MyServlet extends HttpServlet {
    // 일반적인 브라우저 접속 GET
    @Override
    protected void doGet(
            HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {
        // req -> 인풋 (데이터)
        // resp -> 아웃풋 (화면 표현되는 것, 주소)
        // 화면을 그려주는 것
//        resp.getWriter().println("Hello AI!"); // 직접 print하면 꾸미기 어려움
        // 그렇다고 index.jsp -> 파일을 노출해서 접근하게 만드는 것 -> 자동으로 되는데
        // 그러면 보안적으로 권장되지는 않음
        RequestDispatcher dispatcher = req.getRequestDispatcher(
                "/WEB-INF/chat.jsp");
        dispatcher.forward(req, resp); // forward
        // 넘기기. -> 처리를 여기로 넘겨달라.
    }
}

// 1. HttpServlet을 '상속(Extend)'해야함
// 2. @WebServlet (애너테이션) -> ('/경로')
// 3. doGet -> Override
// 4. resp(HttpServletResponse) -> Writer -> println