import "dart:io";
  //prompt question function
String prompt(String question){
    print(question);
    String ans = stdin.readLineSync()!;
    return ans;
}


void main() {
    String guess = "";
    String guessAnswer = "Dart Language";
    int guessCount = 0;
    while(guess != guessAnswer)
    {       
      guess = prompt("Please enter your guess:");;  
      if(guess != guessAnswer)
      {
        print("\nPlease try again, your guess of $guess was wrong");        
      }
      guessCount++;
    }
  
    if(guessCount == 1)
    {
      print("\nCongratulations your guess of $guess was right at first   trial");
    }
    else if(guessCount>1)
    {
    print("\nWelldone your guess of $guess was correct after $guessCount guesses");
    }
}
