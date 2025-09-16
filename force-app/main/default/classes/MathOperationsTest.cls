@IsTest
private class MathOperationsTest {
    
    @IsTest
    static void testAdd() {
        System.assertEquals(5, MathOperations.add(2, 3));
    }
    
    @IsTest
    static void testSubtract() {
        System.assertEquals(1, MathOperations.subtract(3, 2));
    }
    
    @IsTest
    static void testMultiply() {
        System.assertEquals(6, MathOperations.multiply(2, 3));
    }
    
    @IsTest
    static void testDivide() {
        System.assertEquals(2, MathOperations.divide(6, 3));
    }
    
    @IsTest
    static void testDivideByZero() {
        try {
            MathOperations.divide(5, 0);
            System.assert(false, 'Expected exception not thrown');
        } catch (MathOperations.MathException ex) {
            System.assertEquals('Cannot divide by zero', ex.getMessage());
        }
    }
}
