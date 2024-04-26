<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Calculator</title>
<style>
  /* CSS styles for the calculator */
  .calculator {
    max-width: 300px;
    margin: 50px auto;
    border: 2px solid #ccc;
    padding: 10px;
    border-radius: 5px;
    background-color: #f9f9f9;
  }
  input[type="text"] {
    width: 100%;
    margin-bottom: 10px;
    padding: 5px;
    font-size: 18px;
  }
  input[type="button"] {
    width: 48%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 5px;
  }
</style>
</head>
<body>
<div class="calculator">
  <form name="calcForm">
    <input type="text" name="display" id="display" readonly>
    <input type="button" value="7" onclick="addToDisplay('7')">
    <input type="button" value="8" onclick="addToDisplay('8')">
    <input type="button" value="9" onclick="addToDisplay('9')">
    <input type="button" value="/" onclick="addToDisplay('/')">
    <input type="button" value="4" onclick="addToDisplay('4')">
    <input type="button" value="5" onclick="addToDisplay('5')">
    <input type="button" value="6" onclick="addToDisplay('6')">
    <input type="button" value="*" onclick="addToDisplay('*')">
    <input type="button" value="1" onclick="addToDisplay('1')">
    <input type="button" value="2" onclick="addToDisplay('2')">
    <input type="button" value="3" onclick="addToDisplay('3')">
    <input type="button" value="-" onclick="addToDisplay('-')">
    <input type="button" value="0" onclick="addToDisplay('0')">
    <input type="button" value="." onclick="addToDisplay('.')">
    <input type="button" value="=" onclick="calculate()">
    <input type="button" value="+" onclick="addToDisplay('+')">
    <input type="button" value="C" onclick="clearDisplay()">
  </form>
</div>
<script>
  function addToDisplay(value) {
    document.calcForm.display.value += value;
  }

  function calculate() {
    try {
      document.calcForm.display.value = eval(document.calcForm.display.value);
    } catch (error) {
      document.calcForm.display.value = 'Error';
    }
  }

  function clearDisplay() {
    document.calcForm.display.value = '';
  }
</script>
</body>
</html>
