public class workers {
      
    public class course{
        //property
        public string name;
        public Integer session;
        public Integer studentNum;
        
        //method
        //constructor method
        public course(String courseName){
            name= courseName;
        }
    }
      
    public string name;
    private integer working_hours=0;
    private Decimal income=0;
    private Decimal expense=0;
    
    //properties (static) workers
    public static integer total_hours=0;
    public static decimal total_incomes=0;
    public static decimal total_expenses=0;
    
    //method
    public workers(String workersName){
        system.debug('Constructor metod is working.......');
        name=workersName;
    }
    public void addHours(integer howmany){
        working_hours+=howmany;
        total_hours+=howmany;
    }
    
    public integer hours(){
        return working_hours;
    }
    public void addIncome(decimal howmuch){
        income+=howmuch;
        total_incomes+=howmuch;
    }
    public decimal incomes(){
        return income;
    }
    public void addExpense(decimal howmuch){
        expense+=howmuch;
        total_expenses+=howmuch;
    }
    public decimal expenses(){
        return expense;
    }
}