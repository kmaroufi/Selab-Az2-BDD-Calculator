package calculator;

public class Calculator {

    public Float reverse(int a) {
        if (a == 0) return null;

        return 1.0f / a;
    }

    public Float sqr(int a) {

        if (a < 0) return null;

        return (float) Math.sqrt(a);
    }
}
