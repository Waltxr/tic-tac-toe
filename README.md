## Tic-Tac-Toe

A CLI Tic Tac Toe game with variable grid size. You have the option to play Human or Computer.

## Inspiration

Set out to create a tic tac toe game application using Ruby. The purpose was to demonstrate an understanding of object oriented programming and to use rspec for testing.

## Features

1. You can play the game against a human or computer.
2. The grid size is variable.
3. Win combinations are not hard coded.

## Installation

Fork and/or clone the repository then `cd` into `tic-tac-toe` and run:
```
bundle install
```

Then run:
```
ruby bin/run
```

## The Code

#### Object Oriented Approach

Tic-Tac-Toe was made as a CLI app. There is a run scrip to start the game, but also Board, Game and Player classes as well as a Players module for distinguishing between human and computer players.

#### Win Detection

There are four win detection algorithms that check to see if the game has been won horizontally, vertically or diagonally.

## Authors
Adam Walter - @Waltxr

## License
MIT Copyright 2018
