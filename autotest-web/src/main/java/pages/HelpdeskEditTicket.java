package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$;

@Name(value = "Страница редактирования тикета")
public class HelpdeskEditTicket extends WebPage {
    @Name("поле заголовок")
    private SelenideElement inputProblemTitle = $("#id_title");
    @Name("поле описание")
    private SelenideElement description = $("#id_description");
    @Name("кнопка сохранить изменения")
    private SelenideElement buttonSave = $("div[class='buttons form-group'] input");
}
