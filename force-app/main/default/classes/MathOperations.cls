public with sharing class MathOperations {
    public static Integer add(Integer a, Integer b) {
        return a + b;
    }
    
    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }
    
    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }
    
    public static Decimal divide(Integer a, Integer b) {
        if (b == 0) {
            throw new MathException('Cannot divide by zero');
        }
        return Decimal.valueOf(a) / Decimal.valueOf(b);
    }
    
    public class MathException extends Exception {}
}
