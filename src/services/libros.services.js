import Libro from "../model/libro.js";
import { where, Op } from "sequelize";

export default class ServiceLibros {
  static async search(name) {
    try {
      const response = await Libro.findAll({
        where: {
          [Op.or]: [
            { titulo: { [Op.like]: `%${name}%` } },
            { autor: { [Op.like]: `%${name}%` } },
          ],
        },
      });

      return { message: null, data: response };
    } catch (error) {
      return { message: error.message, data: null };
    }
  }

  static async listarLibrosPaginados({ pagina = 1, limite = 10 }) {
    const offset = (pagina - 1) * limite;

    const opciones = {
      limit: +limite,
      offset,
      order: [["id", "ASC"]],
      where: {},
    };

    const { count, rows: libros } = await Libro.findAndCountAll(opciones);

    return {
      libros,
      paginacion: {
        totalItems: count,
        totalPaginas: Math.ceil(count / limite),
        paginaActual: +pagina,
        itemsPorPagina: +limite,
      },
    };
  }

  static async getLibroById(id) {
    try {
      const response = await Libro.findByPk(id);
      if (!response) {
        throw new Error("No se encontró el libro");
      }
      return { message: null, data: response };
    } catch (error) {
      return { message: error.message, data: null };
    }
  }

  static async createLibro(libro) {
    try {
      const findBook = await Libro.findOne({ where: { titulo: libro.titulo } });

      if (findBook) {
        throw new Error("El libro ya existe");
      }

      const response = await Libro.create(libro);
      if (!response) {
        throw new Error("No se pudo crear el libro");
      }

      return { message: null, data: response };
    } catch (error) {
      return { message: error.message, data: null };
    }
  }

  static async updateLibro(id, libro) {
    try {
      const response = await Libro.update(libro, { where: { id: id } });
      if (response[0] === 0) {
        throw new Error("No se encontró el libro");
      }
      return { message: null, data: libro };
    } catch (error) {
      return { message: error.message, data: null };
    }
  }

  static async deleteLibro(id) {
    try {
      const response = await Libro.destroy({ where: { id: id } });
      if (response === 0) {
        throw new Error("No se encontró el libro");
      }
      return { message: null, data: response };
    } catch (error) {
      return { message: error.message, data: null };
    }
  }
}
