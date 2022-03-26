package pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$;

@Name(value = "Страница авторизации")
public class HelpdeskLoginPage extends WebPage {
    @Name("поле пользователь")
    private SelenideElement fieldUsername = $("#username");
    @Name("поле пароль")
    private SelenideElement fieldPassword = $("#password");
    @Name("кнопка подтвердить")
    private SelenideElement submitButton = $("input[type='submit']");
}
