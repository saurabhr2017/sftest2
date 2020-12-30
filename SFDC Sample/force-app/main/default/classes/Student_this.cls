public class Student_this {
	public String lastName, firstName, phone;
    public Student_this(String lastName, String firstName, String phone){
        this.lastName=lastName;
        this.firstName=firstName;
        this.phone=phone;
    }
    public void show(){
        system.debug('lastName:'+lastName);
        system.debug('firstName:'+firstName);
        system.debug('Phone:'+phone);
    } 
}