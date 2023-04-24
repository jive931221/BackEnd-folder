import React, { useState } from 'react';
import './Style/StyleForm.css'
import { BsSearch } from "react-icons/bs";

function Form(props) {
    const [country, setCountry] = useState('')
    const [city, setCity] = useState('')


    const handleSend = e => {
        e.preventDefault();
     props.onSubmit(city,country)
     setCity('');
     setCountry('');
    }
    return (<div className='container-form'>
        <form action="" onSubmit={handleSend}>
            <input type="text" onChange={(e) => setCountry(e.target.value)} value={country}  placeholder='Ingresa el pais' />
            <input type="text" onChange={(e) => setCity(e.target.value)} value={city} placeholder='Ingresa la ciudad' />
            <button type='submit'><BsSearch/></button>
        </form>
    </div>)
}
export default Form