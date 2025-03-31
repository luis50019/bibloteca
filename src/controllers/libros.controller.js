import ServiceLibros from "../services/libros.services.js";
import isValidBook from "../schema/bookSchema.js";
export default class LibrosController {

  static async searchBooks(req, res) {
    try {
      const {name} = req.query;
      const response = await ServiceLibros.search(name);
      if(response.message) {
        throw new Error(response.message);
      }
      res.status(200).json({data:response.data})
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  static async getLibros(req, res) {
    try {
      const { pagina, limite } = req.query;

      const resultado = await ServiceLibros.listarLibrosPaginados({
        pagina,
        limite
      });

      res.json({
        success: true,
        ...resultado,
      });
    } catch (error) {
      console.error("Error en LibroController:", error);
      res.status(500).json({
        success: false,
        message: "Error al obtener los libros",
        error: error.message,
      });
    }
  }

  static async showLibros(req, res) {
    try {
      res.render("Pages/listaLibros");
    } catch (error) {
      res.render("Pages/error", { message: error.message });
    }
  }

  static async getLibro(req, res) {
    try {
      const { id } = req.params;
      const response = await ServiceLibros.getLibroById(id);
      if (response.message) {
        throw new Error(response.message);
      }
      res.render("Pages/formularioLibro", { libro: response.data });
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  static newBook(req, res) {
    res.render("Pages/formularioLibro", { libro: null });
  }

  static async createLibro(req, res) {
    try {
      const { titulo, autor, anio_publicacion, genero } = req.body;

      const isValid = isValidBook({
        titulo,
        autor,
        anio_publicacion: parseInt(anio_publicacion),
        genero,
      });
      
      if (!isValid) {
        throw new Error(isValid.error);
      }

      const response = await ServiceLibros.createLibro(req.body);
      if (response.message) {
        throw new Error(response.message);
      }
      res.status(200).json({ date: response.data });
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  static async updateLibro(req, res) {
    try {
      const { id } = req.params;
      const response = await ServiceLibros.updateLibro(id, req.body);
      if (response.message) {
        throw new Error(response.message);
      }
      res.status(201).json({ data: response.data });
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  static async deleteLibro(req, res) {
    try {
      const { id } = req.params;
      const response = await ServiceLibros.deleteLibro(id);
      if (response.message) {
        throw new Error(response.message);
      }
      res.status(200).json({ data: response.data });
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}
