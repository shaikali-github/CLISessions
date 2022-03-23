public class ClaimAfterUpdate 

    public  void afterUpdate(List<Case> newList, List<Case> oldList)
    {
        Map<Id, Case> oldMap = new Map<Id, Case>(oldList);
        Set<Id> setCaseIds = new Set<Id>();
        for(Case objCase: newList){
             if(objCase.Status != oldMap.get(objCase.Id).Status){
                 setCaseIds.add(objCase.Id);
             }
        }
        
        if(!setCaseIds.isEmpty()){
            //Call batch class to skip duplicate check
            //batch class will check if there are any duplicates to review and change the status to third party check if no duplicate found.
        }
    }
}