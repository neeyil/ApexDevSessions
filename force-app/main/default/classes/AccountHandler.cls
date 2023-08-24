public class AccountHandler {
    public static void updateAvgCaseResolutionDays(List<Id> accountIds){
        // Work in progress!
        Integer totalDays = 0, totalCases = 0;
        // retrive all the cases for this account
        // get resolution days for each account (ClosedDate - CreatedDate)
        for(Case caseObj : [SELECT Id, CreatedDate, ClosedDate
                            FROM Case
                            WHERE IsClosed=true
                            AND AccountId IN: accountIds]){
                                // increase number of cases
                                totalCases++;
                                // get duration in days and add it to totalDays
                                totalDays += caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date());
                            }
        Decimal resolutionDays = totalDays/totalCases;
        // update account object
        List<Account> accs = [SELECT Id, Avg_Case_Resolution_Days__c, 
                           (SELECT Id, CreatedDate, ClosedDate FROM Cases
                            WHERE IsClosed=true AND AccountId IN: accountIds) 
                           FROM Account] ;
        for(Account acc : accs){
                               acc.Avg_Case_Resolution_Days__c = resolutionDays;                      
                           }
    update accs;
}
}