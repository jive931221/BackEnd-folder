import React, { useState } from "react";
import Form from "./Form";
import axios from 'axios';
import "./Style/StyleFetch.css"

function Fetch() {
    const [weather, setWeather] = useState(null);
    const handleFormSubmit = async (city, country) => {
        const apiId = "b60a1f38832bebc3805f0fd353936e1b";
        const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city},${country}&APPID=${apiId}&units=metric&lang=es`;
        try {
            const response = await axios.get(apiUrl);
            const data = response.data;
            const weatherData = {
                nombre: data.name,
                temperatura: Math.round(data.main.temp),
                descripcion: data.weather[0].description
            };
            setWeather(data);
            console.log(data);

            axios.post("https://backend-code-production-a17d.up.railway.app/api/Clima", weatherData)
                .then((response) => {
                    console.log(response.data);
                })
                .catch((error) => {
                    console.log(error);
                });
        } catch (error) {
            console.error(error);
        }
    };
    return (
        <div>
            <Form onSubmit={handleFormSubmit} />
            <div className="container">
                {weather && (
                    <div className="container-fetch">
                        <h2>{weather.name}, {weather.sys.country}</h2>
                        <img src={`https://openweathermap.org/img/wn/${weather.weather[0].icon}@2x.png`} alt={weather.weather[0].icon} />
                        <p>Temperature: {Math.round(weather.main.temp)}°C</p>
                        <p>Description: {weather.weather[0].description}</p>
                    </div>
                )}
            </div>
        </div>
    );
}

export default Fetch;
