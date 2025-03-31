import { Router } from "express";
import { homeController } from "../controllers/home.controller.js";

const homeRoutes = Router();

homeRoutes.get('/',homeController.getHome);

export default homeRoutes;

