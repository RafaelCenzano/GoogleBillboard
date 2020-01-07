public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup(){      
    // solution 7427466391
    // loop for cheking 10 digits at a time
    for(int i = 0; i < e.length(); i++){
        String tenDigits = e.substring(i,i+10);
        Double parsed = Double.parseDouble(tenDigits);

        if(isPrime(parsed)){
            System.out.println(e.substring(i,i+10));
            break;
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