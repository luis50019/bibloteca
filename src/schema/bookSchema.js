import zod from "zod";

const bookSchema = zod.object({
  titulo:zod.string().min(2,{message:"EL titulo debe ser mayor a 4 caracteres"}),
  autor:zod.string().min(2,{message:"EL autor debe ser mayor a 4 caracteres"}),
  genero:zod.string().min(2,{message:"EL genero debe ser mayor a 4 caracteres"}),
  anio_publicacion:zod.number().min(1800,{message:"EL año de publicacion debe ser mayor a 1800"})
})

export default function isValidBook(object){
  return bookSchema.safeParse(object)
}