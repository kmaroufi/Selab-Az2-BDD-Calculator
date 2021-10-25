package calculator;

import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

public class Stepdefs {
    private Calculator calculator;
    private int value;
    private Float result;

    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("^Input value ([-+]?[0-9]+)$")
    public void inputValue(int arg0) {
        value = arg0;
    }

    @When("^I press rvs button$")
    public void iPressRvsButton() {
        result = calculator.reverse(value);
    }

    @Then("^I expect the result ([-+]?[0-9]*(?:\\.[0-9]*)?)$")
    public void iExpectTheResult(float arg0) {
        Assert.assertEquals(arg0, result, 0.001);
    }

    @Then("^I expect the result Not defined$")
    public void iExpectTheResult() {
        Assert.assertNull(result);
    }
}
