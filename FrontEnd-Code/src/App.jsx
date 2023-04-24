import React from 'react';
import './App.css';
import Fetch from './component/Fetch';
import ReturnBD from './component/ReturnBD';
function App() {
    
  return (
    <div className='container'>
      <div className='weater-container'>
        <Fetch />
        <ReturnBD/>
      </div>
    </div>
  );
}

export default App;

