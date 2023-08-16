package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static support.TestContext.getDriver;

public class EGstepsDefinitions {
    @Given("EG go to url {string}")
    public void egGoToUrl(String sURL) {
        getDriver().get("https://www.google.com/");
        switch (sURL){
            case "Google":
                getDriver().get("https://www.google.com/");
                break;
            case "Portnov School":
                getDriver().get("https://www.portnov.com/");
                break;
            case "Yahoo":
                getDriver().get("https://www.yahoo.com/");
                break;
            case "Ask":
                getDriver().get("http://ask-int.portnov.com/#/login");
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @Then("EG get page information")
    public void egGetPageInformation() {
        System.out.println("The page title is" + getDriver().getTitle());
        System.out.println("The page URL is" + getDriver().getCurrentUrl());
        System.out.println("Window handle is" + getDriver().getWindowHandle());

    }

    @Then("EG maximize the window")
    public void egMaximizeTheWindow() {
        getDriver().manage().window().maximize();
    }
}
