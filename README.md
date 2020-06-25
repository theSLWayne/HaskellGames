# HaskellGames

This is a collection of games created with the functional programming language, Haskell. Haskell is a pure functional programming language and one of the most effective approaches towards learning functional programming paradigm. More information on the language can be found [here](https://www.haskell.org/).

### Prerequisites

- In order to run these games on your local environment, you need to have ghci installed on your computer. More information can be found [here](https://www.haskell.org/platform).

### How to run

- Clone the repository.
- Open Terminal and navigate into the folder containing the game that you want to run.
- Run interactive Haskell compiler with the following command.
```
ghci
```

- Inside the interactive compiler, load the Haskell file. Here, an example is shown as how to load the StarMan game.
```
:l starman.hs
```

- Then run the game initiation function.(Same as the filename.)

### Troubleshoot

- When you load the program, it should display something like the following if the loading process is successful.
```
[1 of 1] Compiling Main             ( starman.hs, interpreted )
Ok, modules loaded: Main.
```

- If it reports an error message, kindly llok at the error message and the line number and try to fix it. If it is not possible, open an issue in the repository.
