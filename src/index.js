import app from "./app.js";
import { PORT } from "./config.js";
import { InitializerDB } from "./db/db.js";


async function startServer(){
  try{
    await InitializerDB();
    app.listen(PORT, () => {console.log(`http://localhost:${PORT}`)})
  }catch(error){
    console.log(error);

    console.log("Error al iniciar la aplicacion");
  }
}

startServer();
