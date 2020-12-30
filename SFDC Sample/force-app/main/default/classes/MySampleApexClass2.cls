// Class definition and body 

public class MySampleApexClass2 {
   public static Double myValue;   // Class Member variable
   public static String myString;  // Class Member variable
   
   public MySampleApexClass2 () {
      myValue = 100; //initialized variable when class is called
   }
   @invocableMethod
   public static void getCalculatedValue () { // Method definition and body
      // do some calculation
      myValue = myValue+10;
      //return myValue;
      system.debug('My Value is:'+myValue);
   }
   
   
   
}