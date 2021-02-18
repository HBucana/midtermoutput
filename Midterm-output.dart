import 'dart:io';
import 'dart:math';

void main(){
    int botScore = 0;
    int playerScore = 0;
    
    print("Enter number of rounds");
   int number_of_rounds = int.parse(stdin.readLineSync());
    
        for (var i = 1; i <= number_of_rounds; i++)
             {
                 print("Round $i : Papel, Gunting, Bato! What's your Pick? ");
                 String player_choice = stdin.readLineSync().toUpperCase();
                 print("$player_choice");
  
 
  var bot = ['PAPEL', 'GUNTING', 'BATO'];
  var answer = (bot[new Random().nextInt(bot.length)]);
  

     if(player_choice == "PAPEL")
         {
             if(answer == "PAPEL")
                 {
                     print("Bot: 📄 - It's a Tie!");
                 }
             else if(answer == "BATO")
                 {
                     print("Bot: 🌑  - You Win!");
                         playerScore++;
                 }
             else if(answer == "GUNTING")
                 {
                    print("Bot: ✂️ - You Lose!");
                         botScore++;
                 }
         }
  
     else if(player_choice == "BATO")
         {
            if(answer == "PAPEL")
                {
                    print("Bot: 📄 - You Lose!");
                         botScore++;
                }
            else if(answer == "BATO")
                {
                     print("Bot: 🌑  - It's a Tie!");
                }
             else if(answer == "GUNTING")
                {
                     print("Bot: ✂️ - You Win!");
                        playerScore++;
                }
         }
  
     else if(player_choice == "GUNTING")
         {
            if(answer == "PAPEL")
                {
                    print("Bot: 📄 - You Win!");
                         playerScore++;
                }
            else if(answer == "BATO")
                {
                    print("Bot: 🌑  - You Lose!");
                        botScore++;
                }
             else if(answer == "GUNTING")
                {
                    print("Bot: ✂️ - It's a Tie!");
                }
          }
 
     else
         {
            print("Invalid Input");
         }
     }
 
     if(playerScore > botScore)
         {
            print("You Win! Bot: $botScore, You: $playerScore");
         }
     else if(playerScore < botScore)
         {
            print("You Lose! Bot: $botScore, You: $playerScore");
         }
     else
        {
            print("It's a tie!");
         }
 
}