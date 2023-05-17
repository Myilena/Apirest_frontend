import express from "express";
import dotenv from "dotenv";
import morgan from "morgan";
import cors from "cors";
import enviroments from "./config/enviroments";
import AllRoutes from "./routes/users.routes";
import cookieParser from "cookie-parser";
const app = express();

//SETTINGS //MIDDLEWARES (FUNCIONES QUE SE REQUIEREN PARA QUE SE PUEDA USAR LA APP)
app.set("PORT", process.env.PORT || 1000);

//middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(morgan('dev'));
app.use(cookieParser());


//ROUTES // PONER ./ SIGNIFICA DESDE LA RAIZ, O SEA TODA LA RUTA ACTUAL DE ESTE ARCHIVO
app.get('/', (req, res) => {
    res.send({ message: 'HOLA SOY YILENA' });
})
app.use('/api', AllRoutes);

export default app;