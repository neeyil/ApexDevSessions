public class OpportunityHandler {
    public static List<Opportunity> updateProfile(List<Id> oppIds){ 
        List<Opportunity> oppList = [SELECT Id, Amount, Profile__c
                                    From Opportunity WHERE Id =: oppIds];
        for (Opportunity opp  : oppList){
            if(opp.Amount < 10000){
                opp.Profile__c = 'Low';
            } else if (opp.Amount >= 10000 && opp.Amount < 50000){
                opp.Profile__c = 'Medium';
            } else if (opp.Amount >= 50000){
                opp.Profile__c = 'High';
            }else{       
            }
        }
        update oppList;
        return oppList;
    }
}