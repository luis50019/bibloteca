import { DataTypes,Model } from "sequelize";
import { sequelize } from "../db/db.js";

class Libro extends Model {}

Libro.init({
  id:{
    type:DataTypes.INTEGER,
    primaryKey:true,
    autoIncrement:true,
    allowNull:false
  },
  titulo:{
    type:DataTypes.STRING,
    allowNull:false
  },
  autor:{
    type:DataTypes.STRING,
    allowNull:false
  },
  anio_publicacion:{
    type:DataTypes.INTEGER,
    allowNull:false
  },
  genero:{
    type:DataTypes.STRING,
    allowNull:false
  }
  
},{sequelize,modelName:"Libros", tableName:"libros",timestamps:false});

export default Libro;

