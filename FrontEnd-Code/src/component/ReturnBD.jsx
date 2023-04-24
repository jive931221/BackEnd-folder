import React, { useState } from 'react';
import "./Style/StyleReturnBD.css"

function ReturnBD() {
    const [weatherData, setWeatherData] = useState([]);
    const [isLoading, setIsLoading] = useState(true);


    (function () {
        fetch('http://localhost:4000/api/clima')
            .then(resp => resp.json())
            .then(Data => {
                setWeatherData(Data)
                setIsLoading(false)
            });
    })();
    return (<div className='container-table'>
        {isLoading ? (<p>Cargando datos..</p>) : (<table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ciudad</th>
                    <th>Temperatura</th>
                    <th>descripcion</th>
                </tr>
            </thead>
            <tbody>
                {weatherData.map((data) => (
                    <tr key={data.id}>
                        <td>{data.id}</td>
                        <td>{data.nombre}</td>
                        <td>{data.temperatura}°C</td>
                        <td>{data.descripcion}</td>
                    </tr>
                ))}
            </tbody>
        </table>)}
    </div>)
}
export default ReturnBD