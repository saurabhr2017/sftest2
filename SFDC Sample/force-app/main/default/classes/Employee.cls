public class Employee {
	public String empName, companyName, branch, location;
    public Decimal salary;
    
    public Employee(string initialName, string initialBranch){
       companyName = initialName;
            branch = initialBranch;
          location = 'Pune'; 
    }
    public void calculate(Integer exp){
        if(exp > 5)
            salary = 50000;
        else
            salary = 30000;
    }
    public void show(){
        system.debug('Employee name:'+empName);
        system.debug('Company Name:'+companyName);
        system.debug('Branch:'+branch);
        system.debug('location:'+location);
        system.debug('Salary:'+salary);
    }
    
}