package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$x;

@Name(value = "Страница с общими элементами")
public class HelpdeskMainPage extends WebPage {
    @Name("кнопка создать новый тикет")
    private SelenideElement newTicketBtn = $x("//i[@class='fas fa-fw fa-plus-circle']");
    @Name("кнопка авторизоваться")
    private SelenideElement buttonLogin = $("#userDropdown");
    @Name("поле поиска")
    private SelenideElement fieldSearch = $("#search_query");
    @Name("кнопка поиска")
    private SelenideElement serchButton = $("div > button[type='submit']");

}
