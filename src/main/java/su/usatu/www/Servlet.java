package su.usatu.www;                                                                                                   // Директория

/** Подключаемые библиотеки **/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

/**
 * Объявляем класс Servlet наследующийся от HttpServlet и переопределяющий два него два метода:
 * doGet(HttpServletRequest req, HttpServletResponse resp)
 * новая строка
 **/
public class Servlet extends HttpServlet {

    /**
     * Метод загружающий страницу myPage.jsp,
     * Метод срабатывает при запросе типа "get"
     *
     * @param req объект-запрос
     * @param resp объект-ответ
     * @throws ServletException исключение типа ServletException
     * @throws IOException исключение типа IOException
     **/
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("myPage.jsp").forward(req, resp);
    }

    /**
     * Метод считающий произведение введенных чисел и выводящий результат на экран
     * Метод срабатывает при запросе на url /
     * Тип запроса "post"
     *
     * @param req объект-запрос
     * @param resp объект-ответ
     * @throws ServletException исключение типа ServletException
     * @throws IOException исключение типа IOException
     **/
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String firstNumText = req.getParameter("numFirst").replace(",", ".");                      // Получаем первое строковое значение (из объекта запроса req) и сразу же заменяем "," на "." (при необходимости)
        BigDecimal firstNum = new BigDecimal(firstNumText);                                                             // Создаем объект класса "BigDecimal" со значением полученного параметра (парсим)

        String secondNumText = req.getParameter("numSecond").replace(",", ".");                    // Получаем второе строковое значение (из объекта запроса req) и сразу же заменяем "," на "." (при необходимости)
        BigDecimal secondNum = new BigDecimal(secondNumText);                                                           // Создаем объект класса "BigDecimal" со значением полученного параметра (парсим)

        BigDecimal result = firstNum.multiply(secondNum);                                                               // Создаем объект класса "BigDecimal", который равен результату умножения первого числа на второе



        req.setAttribute("numFirst", req.getParameter("numFirst"));                                               /** Кладем в объект-запрос атрибут и присваеваем атрибуту значение, в кратце
                                                                                                                            (отправляем обратно на форму первое число [для сохранения введенного числа]) **/
        req.setAttribute("numSecond", req.getParameter("numSecond"));                                             /** Кладем в объект-запрос атрибут и присваеваем атрибуту значение, в кратце
                                                                                                                            (отправляем обратно на форму второе число [для сохранения введенного числа]) **/
        req.setAttribute("result", result.toString().replace(".", ","));                           /** Кладем в объект-запрос атрибут результата и присваиваем атрбуту значение, попутно заменяем "." на ",",
                                                                                                                             в кратце (отправляем результат на форму для вывода) **/

        req.getRequestDispatcher("myPage.jsp").forward(req, resp);
    }

}
