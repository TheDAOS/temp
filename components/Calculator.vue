<template>
    <div class="calculator">
      <div class="display">
        <input type="text" :value="currentInput" disabled />
      </div>
      <div class="buttons">
        <button @click="appendToInput('7')">7</button>
        <button @click="appendToInput('8')">8</button>
        <button @click="appendToInput('9')">9</button>
        <button @click="appendToInput('+')">+</button>
  
        <button @click="appendToInput('4')">4</button>
        <button @click="appendToInput('5')">5</button>
        <button @click="appendToInput('6')">6</button>
        <button @click="appendToInput('-')">-</button>
  
        <button @click="appendToInput('1')">1</button>
        <button @click="appendToInput('2')">2</button>
        <button @click="appendToInput('3')">3</button>
        <button @click="appendToInput('*')">*</button>
  
        <button @click="appendToInput('0')">0</button>
        <button @click="appendToInput('.')">.</button>
        <button @click="clearInput">C</button>
        <button @click="appendToInput('/')">/</button>
  
        <button @click="calculateResult" class="equal">=</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        currentInput: ''
      };
    },
    methods: {
      appendToInput(value) {
        this.currentInput += value;
      },
      clearInput() {
        this.currentInput = '';
      },
      calculateResult() {
        try {
          this.currentInput = eval(this.currentInput).toString();
        } catch (error) {
          this.currentInput = 'Error';
        }
      }
    }
  };
  </script>
  
  <style scoped>
  .calculator {
    width: 100%;
    max-width: 320px;
    margin: 20px auto;
    border: 2px solid #ccc;
    border-radius: 8px;
    background-color: #f9f9f9;
  }
  
  .display {
    width: 100%;
    height: 50px;
    background-color: #333;
    color: white;
    display: flex;
    align-items: center;
    justify-content: flex-end;
    padding: 10px;
    box-sizing: border-box;
  }
  
  .display input {
    background: none;
    border: none;
    color: white;
    font-size: 2rem;
    text-align: right;
    width: 100%;
  }
  
  .buttons {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 10px;
    padding: 10px;
  }
  
  button {
    padding: 20px;
    font-size: 1.5rem;
    border-radius: 8px;
    border: 1px solid #ccc;
    background-color: #f0f0f0;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
  button:hover {
    background-color: #ddd;
  }
  
  button:active {
    background-color: #ccc;
  }
  
  .equal {
    background-color: #4caf50;
    color: white;
    grid-column: span 4;
  }
  
  .equal:hover {
    background-color: #45a049;
  }
  </style>
  