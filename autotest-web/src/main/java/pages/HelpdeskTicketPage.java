package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$x;

@Name(value="Страница тикета")
public class HelpdeskTicketPage extends WebPage {

    @Name("кнопка изменить тикет")
    private SelenideElement fieldUsername = $x("//a[@class='ticket-edit']");
}
