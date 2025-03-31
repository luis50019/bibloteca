import { Router } from "express";
import LibrosController from "../controllers/libros.controller.js";
const routerLibros = Router();

routerLibros.get('/home',LibrosController.showLibros);//renderiza los libros obtenidos
routerLibros.get('/',LibrosController.getLibros); //Obtiene todos los libros
routerLibros.get("/:id(\\d+)/editar", LibrosController.getLibro);// muestra el formulario para editar
routerLibros.get('/nuevo',LibrosController.newBook); // muestrar formulario para crear uno nuevo
routerLibros.get('/search',LibrosController.searchBooks); // muestra los libros que coincidan con la busqueda
// metodos que se encargan de procesar los datos
routerLibros.post('/',LibrosController.createLibro);
routerLibros.put('/:id',LibrosController.updateLibro);
routerLibros.delete('/:id/eliminar',LibrosController.deleteLibro);

export default routerLibros
