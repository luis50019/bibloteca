import { Sequelize } from "sequelize";
import {
  DB_PASSWORD,
  DB_HOST,
  DB_USER,
  DB_NAME,
  DB_PORT,
  DB_DIALECT,
} from "../config.js";

export const sequelize = new Sequelize(DB_NAME, DB_USER, DB_PASSWORD, {
  host: DB_HOST,
  dialect: DB_DIALECT,
  port: DB_PORT,
});

export async function InitializerDB() {
  try{
    await sequelize.authenticate();
    console.log("Conexion exitosa a la base de datos");
  }catch(error){
    throw error;
  }
}

