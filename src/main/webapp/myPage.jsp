<%--
  Created by IntelliJ IDEA.
  User: Дмитрий
  Date: 29.10.18
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>

<!-- Основная (и единственная в нашем случае) web-страница -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>                                                       <!-- page: на данной странице, contentType: тип передаваемого контента (является приоритетным)
                                                                                                                        текст: html, кодировка: UTF-8, язык: java -->

<html>                                                                                                                  <!-- Основной тэг страницы: открытие -->

    <head>                                                                                                              <!-- Глава (верхний), в html то что прописывается в названии вкладки: открытие -->
        <title>Умножение чисел</title>                                                                                  <!-- Название -->
    </head>                                                                                                             <!-- Глава (верхний): закрытие -->

    <body>                                                                                                              <!-- Освное тело страницы: открытие тэга -->

        <!-- Yandex.Metrika informer -->

        <a href="https://metrika.yandex.ru/stat/?id=50943152&amp;from=informer"
           target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/50943152/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"
                                               style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" class="ym-advanced-informer" data-cid="50943152" data-lang="ru" /></a>

        <!-- /Yandex.Metrika informer -->

        <!-- Yandex.Metrika counter -->

        <script type="text/javascript" >
            (function (d, w, c) {
                (w[c] = w[c] || []).push(function() {
                    try {
                        w.yaCounter50943152 = new Ya.Metrika2({
                            id:50943152,
                            clickmap:true,
                            trackLinks:true,
                            accurateTrackBounce:true
                        });
                    } catch(e) { }
                });

                var n = d.getElementsByTagName("script")[0],
                    s = d.createElement("script"),
                    f = function () { n.parentNode.insertBefore(s, n); };
                s.type = "text/javascript";
                s.async = true;
                s.src = "https://mc.yandex.ru/metrika/tag.js";

                if (w.opera == "[object Opera]") {
                    d.addEventListener("DOMContentLoaded", f, false);
                } else { f(); }
            })(document, window, "yandex_metrika_callbacks2");
        </script>

        <noscript><div><img src="https://mc.yandex.ru/watch/50943152" style="position:absolute; left:-9999px;" alt="" /></div></noscript>

        <!-- /Yandex.Metrika counter -->

    <div style="width: 600px; margin: 0 auto; border: 1px solid #3a3a3a; text-align: center;">                          <!-- Элемент: открытие тэга, с его настройками -->
        <br>                                                                                                            <!-- Перевод строки -->
        <br>                                                                                                            <!-- Перевод строки -->
        <label style="font-size: 20pt; font-family: Times; font-weight:bold;">Умножение</label>                                                                            <!-- Обычный лейбл - текст, с настройками форматирования -->
        <br>                                                                                                            <!-- Перевод строки -->
        <br>                                                                                                            <!-- Перевод строки -->
        <label style="font-size: 16pt; font-family: Times; text-decoration:underline;">Введите данные и вычислите произведение двух чисел</label>                                   <!-- Обычный лейбл - текст, с настройками форматирования -->
        <br>                                                                                                            <!-- Перевод строки -->
        <br>                                                                                                            <!-- Перевод строки -->
        <label style="font-size: 14pt; fond-family: Times;">Максимальное значение чисел: 1 000 000 000 000 000</label>                                   <!-- Обычный лейбл - текст, с настройками форматирования -->
        <br>                                                                                                            <!-- Перевод строки -->
        <label style="font-size: 14pt; fond-family: Times;">Минимальное значение чисел: -1 000 000 000 000 000</label>                                   <!-- Обычный лейбл - текст, с настройками форматирования -->
        <br>                                                                                                            <!-- Перевод строки -->
        <br>                                                                                                            <!-- Перевод строки -->
        <br>                                                                                                            <!-- Перевод строки -->

        <form action="" method="post">                                                                                  <!-- Форма web-страницы, action: определяет адрес, куда
                                                                                                                        отправляется форма (по умолчанию действие установлено на
                                                                                                                        текущую страницу), method: определяет используемый метод
                                                                                                                        "post" или "get". Так же открывает тэг -->
            <label style="font-size: 14pt; fond-family: Times;">Первое число</label>                                                                     <!-- Обычный лейбл - текст, с настройками форматирования -->
            <br>                                                                                                        <!-- Перевод строки -->

            <input type="number" step="any" max="1000000000000000" min="-1000000000000000"
                   value="${numFirst}" name="numFirst" style="height: 30px; width: 500px; font-size: 12pt;" required/>                                           <!-- Пользовательсткое поле ввода (число) со своими настройками -->

            <br>                                                                                                        <!-- Перевод строки -->
            <br>                                                                                                        <!-- Перевод строки -->

            <label style="font-size: 14pt; fond-family: Times;">Второе число</label>                                                                     <!-- Обычный лейбл - текст, с настройками форматирования -->
            <br>                                                                                                        <!-- Перевод строки -->

            <input type="number" step="any" max="1000000000000000" min="-1000000000000000"
                   value="${numSecond}" name="numSecond" style="height: 30px; width: 500px; font-size: 12pt;" required/>                                         <!-- Пользовательсткое поле ввода (число) со своими настройками -->

            <br>                                                                                                        <!-- Перевод строки -->
            <br>                                                                                                        <!-- Перевод строки -->

            <input type="submit" style="height: 30px; width: 160px; font-size: 12pt;" value="Умножить">                                                          <!-- Пользовательсткое поле ввода (кнопка) со своими настройками -->

            <br>                                                                                                        <!-- Перевод строки -->
            <br>                                                                                                        <!-- Перевод строки -->

            <label style="font-size: 14pt; fond-family: Times;">Результат</label>                                                                        <!-- Обычный лейбл - текст, с настройками форматирования -->

            <br>                                                                                                        <!-- Перевод строки -->

            <input type="text" value="${result}" name="result" style="height: 30px; width: 500px; font-size: 12pt;">                                             <!-- Пользовательсткое поле ввода (текст) со своими настройками -->
        </form>                                                                                                         <!-- Форма: закрытие тэга -->
    </div>                                                                                                              <!-- Элемент: закрытие тэга -->

    </body>                                                                                                             <!-- Освное тело страницы: закрытие тэга -->

</html>                                                                                                                 <!-- Основной тэг страницы: открытие -->