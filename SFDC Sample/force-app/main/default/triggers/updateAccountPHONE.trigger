/*trigger updateAccountPhone on Contact (after insert) {
    list<Account> accList = new list<Account>();
    for(Contact cont : trigger.new){
        {
            Account acc = new Account();
            acc.Name  = cont.lastName;
            acc.Phone = cont.Phone;
            acc.id    = cont.AccountId;
            accList.add(acc);
        }
    }insert accList;
}
*/
trigger updateAccountPHONE on Contact(After Insert){
    
    Account acc=[select id, phone from Account];
    List<Account> accList =new List<Account>();
    for(Contact c:trigger.new){

       if(c.AccountId == acc.id){
          acc.Phone = c.phone ;
          accList.add(acc);
       
   }
 
 }  
    update accList;
}