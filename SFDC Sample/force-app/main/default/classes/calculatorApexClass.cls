public class calculatorApexClass{
    private static integer varSum;
    private static integer varMulti;
    
    public static integer MakeSum(integer varNumA, integer varNumB){
        varSum = varNumA + varNumB;
        return varSum;
    }
    
    public static void MakeMulti(integer varNumC, integer varNumD){
        varMulti = varNumC * varNumD;
        system.debug('Answer for multiplication ' +varMulti);
    }
}