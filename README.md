
# Tic Tac Toe Game

The aim of this project is to build a Tic Tac Toe Game using ruby language.

This project is about coding the Tic Tac Toe Game using the concept of object oriented programming. Here, we explored the use of classes, methods and variables. We also explored the application of these terms in solving a problem. It involves breaking the problem into smaller piece and units, defined a pseudocode on how to solve these problems, wrote a mock solution to the problem and then wrote a proper ruby code arranged in classes and methods combined and arranged properly to solve this problem.

![PROJECT: made by Emilio and Nnamdi](https://github.com/Zubenna/tic-tac-toe-project/blob/readme_game_instructions/img/Tic_tac_toeSS.png)

## Features Of This Game

- Game displays empty board when launched.
- Game is designed for two players.
- Game vallidates players name.
- Game vallidates Chosen symbol.
- Game displays the board after each player plays.
- Game vallidates position selected by each player and informs the player if the position is free or not.
- It also vallidates each number/position played and informs the player if number/position is invallid.
- Game will announce the name of the winner at the end of each round of play and that marks the end of that round.
- Game will announce a tie when the round ends in a draw.

## Game Rules

- Player name must be only alphabets of at least three letters.
- Do not play twice before your opponent plays.
- You must chose either **X** or **Y** as the symbol
- You must enter only numbers between 0 to 8 when playing.

## How To Download The Game And Be Ready To Play
1.- Click on the install or download button under the repository name and copy the URL by clicking on the icon.
         ![PROJECT: first instruction](https://github.com/Zubenna/tic-tac-toe-project/blob/readme_game_instructions/img/first_instruction.png)
2.- Open your terminal. To open the terminal, press Ctrl+Alt+T(Ubuntu) or if you are using Mac Command + Space and type in 'Terminal'. If you are using Windows you can skip this step, and use the Live Version explained below.

3.- Navigate to the location in your computer where you want the repo to be cloned. Remeber that you have to type cd first.

4.- Type git clone and paste the url you copied on step one.
         $ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
         ![PROJECT: first instruction](https://github.com/Zubenna/tic-tac-toe-project/blob/readme_game_instructions/img/git_clone.png)

5.- Press Enter. Your local clone will be created.

6.- After cloning your local version, please type 'bin/main.rb' and press Enter.

7.- Enjoy playing!


If you rather using a Live Online version of the game, follow the next instructions.

## Live Version
Enter the link and at the top part of the webpage you will find a run command. Just press it and you will see the terminal displayed at the right side of the screen. Follow the game instruction always typing inside your terminal.

[Click Here](https://repl.it/@Emiliocm31/Tic-Tac-Toe-Game)

## How to Play

This game is designed to be played by two human players.
On launching the game, it will display an empty board containing numbers 0 to 8 indicating the empty positions, players will chose.
- The Game will prompt the first player to enter his name
- After the first player enters his name, the players name will be validated to ensure that it meets the basic name specificationi of the game. The name entered must contain only alphabets, letter A to Z. Digits and special characters are not accepted as path of the name. The name must contain minimum of three letters.
- After the name validation, the game prompts the second player to enter his/her name. After entering the name, name validation also takes place as described above.
- If both players name are accepted, the game prompts the first player to select a symbol either **X**  or **Y**. The game will not accept any other symbol outside the one specified and will inform the user if wrong selection is made.
- If first player selects **X**, **Y** will be automatically assigned to the second player and vise versa.
- If the game accepts the symbols, It will prompt the first player to play. The board contains numbers from 0 to 8 representng the nine differet positions in a Tic Tac Toe game.
- To play, the current player will enter any number between 0 to 8. Numbers outside 0 to 8 will not be accepted and the game will display a message when that occurs. If the number is accepted, the game replace that position on the board with the symbol assigned to that player. It will also display the current state of the board.
- Game will prompt the next player to play. The steps above will be repeated and this continues alternatly between the players till a winner emerges or game ends in a draw.

## Winning Condition

- Three different winning condition exist for each player.
- 1) Player whose symbol first occupies any of the three rows on the board wins.
   Rows: [0, 1, 2] or [3, 4, 5] or [6, 7, 8]. The game displays the name of the winner and ends.
- 2) Player whose symbol first occupies any of the three columns on the board wins.
   Columns: [0, 3, 6] or [1, 4, 7] or [2, 5, 8]. The game displays the name of the winner and ends.
- 3) Player whose symbol first occupies any of the two diagonals on the board wins.
   Diagonals: [0, 4, 8] or [2, 4, 6]. The game displays the name of the winner and ends.

## Draw Condition

If both players were geniuses, and placed all there symbols on the board in such a way that nobody wins before all the positions are occupied, it is a draw. The game will display the message 'Waoo!! It is a tie. The game ends.

## Built With

- Ruby

## Authors

👤 **Emilio Contreras**

- Github: [@emiliocm9](https://github.com/emiliocm9)
- Twitter: [@emiliocm31](https://twitter.com/emiliocm31)
- Email: [email](emilio.contreras97@gmail.com)

👤 **Nnamdi Emelu**

- Github: [@githubhandle](https://github.com/zubenna)
- Twitter: [@twitterhandle](https://twitter.com/zubenna)
- Linkedin: [linkedin](https://linkedin.com/in/nnamdi-emelu-08b14340/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Zubenna/tic-tac-toe-project/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project originally taken from The Odin Project
- Project inspired by Microverse Program
