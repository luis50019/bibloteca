import path from 'node:path';
import express, {json, urlencoded} from 'express';
import ejs from 'express-ejs-layouts';
import methodOverride from 'method-override';
import morgan from 'morgan';

import routerLibros from './routes/Libros.routes.js';
import homeRoutes from './routes/Home.routes.js';

const app = express();

app.set('view engine', 'ejs');
app.set('views', path.join(import.meta.dirname, '/views'));
app.set('layout',"layouts/layout")

app.use(ejs);
app.use(json());
app.use(methodOverride('_method'));
app.use(urlencoded({extended: true}));
app.use(express.static(path.join(import.meta.dirname, "/public")));
app.use(morgan('dev'));


app.use('/libros',routerLibros);
app.use('/',homeRoutes)

export default app;