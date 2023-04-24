import { Router } from 'express'
import { pool } from '../db.js'


const ruta = Router()
ruta.get('/clima',async(req,res)=>{
  const[rows]=await pool.query('SELECT * FROM clima;')
  res.json(rows)
})


ruta.post('/clima', async (req, res) => {

  const { nombre, temperatura, descripcion } = req.body;

  const [rows] = await pool.query('INSERT INTO clima (nombre,temperatura,descripcion) VALUE(?,?,?)', [nombre, temperatura, descripcion])
  res.send({
    id: rows.insertId,
    nombre,
    temperatura,
    descripcion
  });
  console.log("se enviaron los datos a la base de datos")
  console.log([rows])
})


ruta.put('/clima', (req, res) => res.send('actualizar clima'))

ruta.delete('/clima', (req, res) => res.send('Eliminando clima'))


export default ruta




