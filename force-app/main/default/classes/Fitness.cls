public class Fitness {
    
    public static Decimal calculateBMI(Decimal weightKg, Decimal heightM){
        Decimal valueBMI = weightKg / (heightM * heightM);
        return valueBMI;
        
    }
    
    public static Decimal calculatePace(Decimal distanceKm, Decimal minutes){
        Decimal hours = minutes / 60;
        Decimal pace = distanceKm / hours;
        return pace;
        
    }

}