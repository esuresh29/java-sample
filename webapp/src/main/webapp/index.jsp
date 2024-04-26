<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2048 Game</title>
<style>
  /* CSS styles for the game */
  .container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  .game-board {
    border: 2px solid #333;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px;
    padding: 10px;
    max-width: 400px;
  }
  .tile {
    border: 2px solid #333;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
    background-color: #eee;
    transition: background-color 0.3s ease;
  }
</style>
</head>
<body>
<div class="container">
  <div class="game-board" id="gameBoard"></div>
</div>
<script>
  // JavaScript for the game logic
  const gameBoard = document.getElementById('gameBoard');
  let board = Array(16).fill(0);

  // Function to initialize the game board
  function initBoard() {
    board = Array(16).fill(0);
    addTile();
    addTile();
    renderBoard();
  }

  // Function to add a new tile to a random empty cell
  function addTile() {
    const emptyCells = board.reduce((acc, cell, index) => {
      if (cell === 0) acc.push(index);
      return acc;
    }, []);

    if (emptyCells.length > 0) {
      const randomIndex = emptyCells[Math.floor(Math.random() * emptyCells.length)];
      board[randomIndex] = Math.random() < 0.9 ? 2 : 4;
    }
  }

  // Function to render the game board
  function renderBoard() {
    gameBoard.innerHTML = '';
    board.forEach((cell, index) => {
      const tile = document.createElement('div');
      tile.className = 'tile';
      tile.textContent = cell !== 0 ? cell : '';
      tile.style.backgroundColor = getTileColor(cell);
      gameBoard.appendChild(tile);
    });
  }

  // Function to get the background color for each tile
  function getTileColor(value) {
    switch (value) {
      case 2: return '#eee4da';
      case 4: return '#ede0c8';
      case 8: return '#f2b179';
      case 16: return '#f59563';
      case 32: return '#f67c5f';
      case 64: return '#f65e3b';
      case 128: return '#edcf72';
      case 256: return '#edcc61';
      case 512: return '#edc850';
      case 1024: return '#edc53f';
      case 2048: return '#edc22e';
      default: return '#ccc0b3';
    }
  }

  // Initialize the game board
  initBoard();
</script>
</body>
</html>
