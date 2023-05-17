import path from "path";
import dotenv from "dotenv";
// __DIRNAME SIGNIFICA LA RUTA ACTUAL DEL ARCHIVO Y A CONTINUACION SE CONCATENA CON OTRO ARCHIVO DE LA CARPETA ENVIROMENT
dotenv.config({path: path.resolve(__dirname, `${process.env.NODE_ENV}.env`)});