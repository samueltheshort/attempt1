"Can you guess what number I'm thinking of (0-10)?"

$InMyHead = Get-Random -Minimum 1 -Maximum 10

$Guess = Read-Host

if($InMyHead -eq $Guess) 
{
    "Good guess!"
} 

    elseif($InMyHead -lt $Guess)
    {
        "You guessed too high. Do you want to guess again?" 
    
        $Guess = Read-Host

            if($InMyHead -eq $Guess) 
            {
                "Good guess!"
            } 

            elseif($InMyHead -lt $Guess)
            {
                "You have lost. The number was $InMyHead and you guessed too high with $Guess."
            }

            elseif($InMyHead -gt $Guess)
            {
                "You have lost. The number was $InMyHead and you guessed too low with $Guess."
            }

    }

    elseif($InMyHead -gt $Guess)
    {
    
        "You guessed too low. Do you want to guess again?" 
    
        $Guess = Read-Host

            if($InMyHead -eq $Guess) 
            {
                "Good guess!"
            } 

            elseif($InMyHead -lt $Guess)
            {
                "You have lost. The number was $InMyHead and you guessed too high with $Guess."
            }

            elseif($InMyHead -gt $Guess)
            {
                "You have lost. The number was $InMyHead and you guessed too low with $Guess."
            }
    
    }
