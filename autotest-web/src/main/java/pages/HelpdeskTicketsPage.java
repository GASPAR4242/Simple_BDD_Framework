package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$x;

@Name(value = "Страница поиска тикета")
public class HelpdeskTicketsPage extends WebPage {
    @Name("тикет")
    private SelenideElement findLastticketWithThistitle = $x("//tbody/tr[last()]//a");
    @Name("кнопка начать сохранять поиск")
    private SelenideElement buttonSaveQuery =$("#headingTwo button");
    @Name("имя сохранения поиска")
    private SelenideElement queryName = $("#headingTwo button");
    @Name("чекбокс чтобы поиск был доступен другим")
    private SelenideElement shareOrNO = $("#id_shared");
    @Name("кнопка подтвердить сохранение поиска")
    private SelenideElement submitSaveQuery = $(".buttons > input");
}
