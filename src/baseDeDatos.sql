DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    anio_publicacion INT,
    genero VARCHAR(100)
);

-- Inserción de 100 libros
INSERT INTO libros (titulo, autor, anio_publicacion, genero) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 1967, 'Realismo mágico'),
('1984', 'George Orwell', 1949, 'Ciencia ficción'),
('El Principito', 'Antoine de Saint-Exupéry', 1943, 'Literatura infantil'),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Novela clásica'),
('Orgullo y prejuicio', 'Jane Austen', 1813, 'Romance'),
('Crónica de una muerte anunciada', 'Gabriel García Márquez', 1981, 'Novela'),
('El señor de los anillos', 'J.R.R. Tolkien', 1954, 'Fantasía'),
('Harry Potter y la piedra filosofal', 'J.K. Rowling', 1997, 'Fantasía'),
('La sombra del viento', 'Carlos Ruiz Zafón', 2001, 'Misterio'),
('Rayuela', 'Julio Cortázar', 1963, 'Novela experimental'),
('El amor en los tiempos del cólera', 'Gabriel García Márquez', 1985, 'Realismo mágico'),
('La ciudad y los perros', 'Mario Vargas Llosa', 1963, 'Novela'),
('Ficciones', 'Jorge Luis Borges', 1944, 'Cuentos'),
('Los detectives salvajes', 'Roberto Bolaño', 1998, 'Novela'),
('Pedro Páramo', 'Juan Rulfo', 1955, 'Realismo mágico'),
('La casa de los espíritus', 'Isabel Allende', 1982, 'Realismo mágico'),
('El laberinto de la soledad', 'Octavio Paz', 1950, 'Ensayo'),
('La región más transparente', 'Carlos Fuentes', 1958, 'Novela'),
('La fiesta del chivo', 'Mario Vargas Llosa', 2000, 'Novela histórica'),
('El túnel', 'Ernesto Sabato', 1948, 'Novela psicológica'),
('Rebelión en la granja', 'George Orwell', 1945, 'Sátira política'),
('Un mundo feliz', 'Aldous Huxley', 1932, 'Ciencia ficción'),
('Fahrenheit 451', 'Ray Bradbury', 1953, 'Ciencia ficción'),
('Matar a un ruiseñor', 'Harper Lee', 1960, 'Drama'),
('El guardián entre el centeno', 'J.D. Salinger', 1951, 'Novela'),
('Las uvas de la ira', 'John Steinbeck', 1939, 'Novela'),
('El gran Gatsby', 'F. Scott Fitzgerald', 1925, 'Novela'),
('Moby Dick', 'Herman Melville', 1851, 'Aventura'),
('Ulises', 'James Joyce', 1922, 'Novela experimental'),
('Anna Karenina', 'León Tolstói', 1877, 'Novela'),
('Crimen y castigo', 'Fiódor Dostoyevski', 1866, 'Novela psicológica'),
('Guerra y paz', 'León Tolstói', 1869, 'Novela histórica'),
('Madame Bovary', 'Gustave Flaubert', 1857, 'Novela'),
('Los miserables', 'Victor Hugo', 1862, 'Novela histórica'),
('El conde de Montecristo', 'Alexandre Dumas', 1844, 'Aventura'),
('Drácula', 'Bram Stoker', 1897, 'Terror'),
('Frankenstein', 'Mary Shelley', 1818, 'Terror'),
('El retrato de Dorian Gray', 'Oscar Wilde', 1890, 'Novela filosófica'),
('Alicia en el país de las maravillas', 'Lewis Carroll', 1865, 'Literatura infantil'),
('El hobbit', 'J.R.R. Tolkien', 1937, 'Fantasía'),
('Las crónicas de Narnia', 'C.S. Lewis', 1950, 'Fantasía'),
('El nombre del viento', 'Patrick Rothfuss', 2007, 'Fantasía'),
('Juego de tronos', 'George R.R. Martin', 1996, 'Fantasía épica'),
('Dune', 'Frank Herbert', 1965, 'Ciencia ficción'),
('Fundación', 'Isaac Asimov', 1951, 'Ciencia ficción'),
('El fin de la eternidad', 'Isaac Asimov', 1955, 'Ciencia ficción'),
('Yo, robot', 'Isaac Asimov', 1950, 'Ciencia ficción'),
('Neuromante', 'William Gibson', 1984, 'Cyberpunk'),
('El juego de Ender', 'Orson Scott Card', 1985, 'Ciencia ficción'),
('La mano izquierda de la oscuridad', 'Ursula K. Le Guin', 1969, 'Ciencia ficción'),
('Los desposeídos', 'Ursula K. Le Guin', 1974, 'Ciencia ficción'),
('El hombre en el castillo', 'Philip K. Dick', 1962, 'Ciencia ficción'),
('¿Sueñan los androides con ovejas eléctricas?', 'Philip K. Dick', 1968, 'Ciencia ficción'),
('La naranja mecánica', 'Anthony Burgess', 1962, 'Ciencia ficción'),
('Solaris', 'Stanisław Lem', 1961, 'Ciencia ficción'),
('El marciano', 'Andy Weir', 2011, 'Ciencia ficción'),
('Ready Player One', 'Ernest Cline', 2011, 'Ciencia ficción'),
('El cuento de la criada', 'Margaret Atwood', 1985, 'Ciencia ficción'),
('Los juegos del hambre', 'Suzanne Collins', 2008, 'Ciencia ficción'),
('Divergente', 'Veronica Roth', 2011, 'Ciencia ficción'),
('Maze Runner', 'James Dashner', 2009, 'Ciencia ficción'),
('El código Da Vinci', 'Dan Brown', 2003, 'Misterio'),
('Ángeles y demonios', 'Dan Brown', 2000, 'Misterio'),
('El psicoanalista', 'John Katzenbach', 2002, 'Thriller psicológico'),
('La chica del tren', 'Paula Hawkins', 2015, 'Thriller'),
('Perdida', 'Gillian Flynn', 2012, 'Thriller'),
('El silencio de los corderos', 'Thomas Harris', 1988, 'Thriller'),
('It', 'Stephen King', 1986, 'Terror'),
('El resplandor', 'Stephen King', 1977, 'Terror'),
('Carrie', 'Stephen King', 1974, 'Terror'),
('Misery', 'Stephen King', 1987, 'Terror'),
('Cementerio de animales', 'Stephen King', 1983, 'Terror'),
('El exorcista', 'William Peter Blatty', 1971, 'Terror'),
('Rosemary´s Baby', 'Ira Levin', 1967, 'Terror'),
('El almuerzo desnudo', 'William S. Burroughs', 1959, 'Novela experimental'),
('En el camino', 'Jack Kerouac', 1957, 'Novela'),
('Lolita', 'Vladimir Nabokov', 1955, 'Novela'),
('El arcoiris de gravedad', 'Thomas Pynchon', 1973, 'Novela'),
('Catch-22', 'Joseph Heller', 1961, 'Sátira'),
('Las aventuras de Huckleberry Finn', 'Mark Twain', 1884, 'Aventura'),
('El viejo y el mar', 'Ernest Hemingway', 1952, 'Novela'),
('Por quién doblan las campanas', 'Ernest Hemingway', 1940, 'Novela'),
('Adiós a las armas', 'Ernest Hemingway', 1929, 'Novela'),
('El ruido y la furia', 'William Faulkner', 1929, 'Novela'),
('El perfume', 'Patrick Süskind', 1985, 'Novela histórica'),
('El médico', 'Noah Gordon', 1986, 'Novela histórica'),
('Los pilares de la Tierra', 'Ken Follett', 1989, 'Novela histórica'),
('El nombre de la rosa', 'Umberto Eco', 1980, 'Novela histórica'),
('Shogun', 'James Clavell', 1975, 'Novela histórica'),
('Memorias de una geisha', 'Arthur Golden', 1997, 'Novela histórica'),
('El último judío', 'Noah Gordon', 1999, 'Novela histórica'),
('La catedral del mar', 'Ildefonso Falcones', 2006, 'Novela histórica'),
('El juego del ángel', 'Carlos Ruiz Zafón', 2008, 'Misterio'),
('El prisionero del cielo', 'Carlos Ruiz Zafón', 2011, 'Misterio'),
('Marina', 'Carlos Ruiz Zafón', 1999, 'Misterio'),
('La reina en el palacio de las corrientes de aire', 'Stieg Larsson', 2007, 'Thriller'),
('Los hombres que no amaban a las mujeres', 'Stieg Larsson', 2005, 'Thriller'),
('La chica que soñaba con una cerilla y un bidón de gasolina', 'Stieg Larsson', 2006, 'Thriller'),
('Millennium 4', 'David Lagercrantz', 2015, 'Thriller'),
('El código del emperador', 'Steve Berry', 2010, 'Thriller'),
('La conspiración', 'Dan Brown', 2001, 'Thriller'),
('Inferno', 'Dan Brown', 2013, 'Thriller'),
('Origen', 'Dan Brown', 2017, 'Thriller'),
('La paciente silenciosa', 'Alex Michaelides', 2019, 'Thriller psicológico'),
('La mujer en la ventana', 'A.J. Finn', 2018, 'Thriller'),
('El hombre de tiza', 'C.J. Tudor', 2018, 'Thriller');
