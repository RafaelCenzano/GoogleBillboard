public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup(){      
    // solution 7427466391
    // loop for cheking 10 digits at a time
    for(int i = 0; i < e.length() - 10; i++){
        String tenDigits = e.substring(i,i+10);
        Double parsed = Double.parseDouble(tenDigits);

        if(isPrime(parsed)){
            System.out.println(e.substring(i,i+10));
            break;
        }
    }
    System.out.println("************");
    // Challenge 2
    // solution all digits add to 49
    for(int i = 0; i < e.length() - 9; i++){
        if(i > 1){
            String tenDigits = e.substring(i,i+10);

            if(addsTo49(tenDigits)){
                System.out.println(e.substring(i,i+10));
            }
        }
    }
}  
public void draw()
{   
	//not needed for this assignment
}  
public boolean isPrime(double num){
    // small numbers not prime
    if(num < 2){
        return false;
    }
    // fix for decimal at beginning
    if(num < 3){
        num *= 100000000;
    }
    //loop for checking for factors
    for(int i = 2; i <= Math.sqrt(num); i++){
        if(num % i == 0){
            return false;
        }
    }
    return true;
}
public boolean addsTo49(String num){
    int sum = 0;
    for(int i = 0; i < 10; i++){
        String newNum = num.substring(i,i+1);
        sum += Double.parseDouble(newNum);
    }
    if(sum == 49){
        return true;
    }
    return false;
}