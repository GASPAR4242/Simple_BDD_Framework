package pages;

import com.codeborne.selenide.SelenideElement;

import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$;

@Name(value = "Страница создания тикета")
public class HelpdeskCreateTicketPage extends WebPage {
    @Name("поле заголовок")
    private SelenideElement inputProblemTitle = $("#id_title");
    @Name("кнопка создать тикет")
    private SelenideElement submitButton = $("button[type='submit']");
    @Name("выбрать очередь")
    private SelenideElement queue = $("#id_queue");
    @Name("поле описание")
    private SelenideElement description = $("#id_body");
    @Name("выбрать приоритет")
    private SelenideElement priority = $("#id_priority");
    @Name("выбрать дату")
    private SelenideElement date = $("#id_due_date");
    @Name("кнопка выберите файл")
    private SelenideElement addFile = $("#id_attachment");
    @Name("Почта")
    private SelenideElement email = $("#id_submitter_email");
}
