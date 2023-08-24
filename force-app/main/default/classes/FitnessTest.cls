@isTest
public class FitnessTest {
    @istest
    public static void calculateBMITest(){
        Decimal result = Fitness.calculateBMI(60, 1.2);
        result = result.setScale(2);
        System.assertEquals(41.67, result);
        
        result = Fitness.calculatePace(10, 10);
        result = result.setScale(2);
        System.assertEquals(60, result);
    }

}