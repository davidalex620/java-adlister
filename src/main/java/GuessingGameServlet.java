import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessingGameServlet", urlPatterns = "/guess")
public class GuessingGameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        request.getRequestDispatcher("guessing-win.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Random rand = new Random();
        int pickNumber = rand.nextInt(100) + 1;

//        request.setAttribute("pickNumber",pickNumber);



        request.getRequestDispatcher("guessing-start.jsp").forward(request, response);
    }
}
