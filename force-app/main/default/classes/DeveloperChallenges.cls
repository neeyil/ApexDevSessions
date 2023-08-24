public class DeveloperChallenges {
    public static void variablesDatatypes(){
        List<String> apexPosts = 
            new List<String>{'Demystifying Apex Collections',
                'Datatypes and variables in Apex'};
                    
                    List<String> lightningPosts = 
                    new List<String>{'Events in Aura framework',
                        'Developing reusable components'};
                            
                            Map<String, List<String>> allPosts = 
                            new Map<String, List<String>>();
        allPosts.put('Apex', apexPosts);
        allPosts.put('Lighning', lightningPosts);
        System.debug(allPosts);
    } 
    
    public static void operators(){
        final Integer One_Slice = 8;
        final Integer Upto3_Slices = 7;
        final Integer MoreThan3_Slices = 6;
        Integer Bill = 0;
        Integer NumberOfSlices = 0;
        Bill = NumberOfSlices == 1 ? One_Slice : 
        NumberOfSlices <= 3 ? NumberOfSlices * Upto3_Slices : 
        NumberOfSlices * MoreThan3_Slices;
        
        System.debug('Bill $' + Bill);
        NumberOfSlices = 1;
        Bill = NumberOfSlices == 1 ? One_Slice : 
        NumberOfSlices <= 3 ? NumberOfSlices * Upto3_Slices : 
        NumberOfSlices * MoreThan3_Slices;
        
        System.debug('Bill $' + Bill);
        NumberOfSlices = 3;
        Bill = NumberOfSlices == 1 ? One_Slice : 
        NumberOfSlices <= 3 ? NumberOfSlices * Upto3_Slices : 
        NumberOfSlices * MoreThan3_Slices;
        
        System.debug('Bill $' + Bill);
        NumberOfSlices = 4;
        Bill = NumberOfSlices == 1 ? One_Slice : 
        NumberOfSlices <= 3 ? NumberOfSlices * Upto3_Slices : 
        NumberOfSlices * MoreThan3_Slices;
        System.debug('Bill $' + Bill);       
    } 
    
    public static void conditions(){
        Integer Year = 2000;
        
        if(Math.mod(Year, 4) == 0){
            If(Math.mod(Year, 100) == 0){
                if(Math.mod(Year, 400) == 0){
                    System.debug('Yaay!!! It is a leap year');
                }else{
                    System.debug('It is not a leap year');
                }
            }else{
                System.debug('Yaay!!! It is a leap year');
            }
        }else{
            System.debug('It is not a leap year');
        }
    }
    
    public static void loopDoWhile(){
        Integer Numbers = 0;
        do {
            if((Math.mod(Numbers, 3) == 0)
               && (Math.mod(Numbers, 5) == 0)){
                   System.debug('Fizzbuzz');
               }else if (Math.mod(Numbers, 3) == 0 ){
                   System.debug('Fizz');
               } else if (Math.mod(Numbers, 5) == 0){
                   System.debug('Buzz');
               } else{
                   System.debug(Numbers);     
               }
            Numbers++;    
        } while(Numbers <=100);       
    }
    
    public static void loopWhile(){
        //Fibonacci series
        Integer previous = 0, next = 1, current;
        Integer counts = 0;
        While (counts < 20){ 
            counts++;
            current = previous;
            previous = next;
            next = current + previous;
            System.debug(counts +' =>> ' + current);            
        }
    }
    
    public static void pattern(){
        Integer n = 5;
        String star = '* ', pattern = '';
        
        for (Integer i = 0; i < n; i++) { 
            pattern += star;
            System.debug(pattern);
        }
    }
}