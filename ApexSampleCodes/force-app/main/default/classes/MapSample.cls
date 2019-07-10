public with sharing class MapSample {
public QueryMap() {

    Map<Id, Contact> opp = new Map<Id,Contact>([select Id, Name from Contact limit 2]);
    
    System.debug(opp.keyset());

        for(Id o: opp.keySet())
        {
            System.debug('>>>>>>>>>>>>>>>>>>>>>' +opp.get(o).Name);
        } 
    }   
}
