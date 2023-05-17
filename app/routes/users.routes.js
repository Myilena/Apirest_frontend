import { Router } from "express";
import * as userController from "../controllers/users.controllers";
const router = Router();


router.post('/users/', userController.isValidToken, userController.createUser);

router.get('/users/', userController.isValidToken, userController.listuser);

router.get('/users/ping', userController.isValidToken, userController.pingUser);

router.get('/users/:id', userController.isValidToken, userController.searchUser);

router.put('/users/', userController.isValidToken, userController.UpdateUser);

router.delete('/users/:id', userController.isValidToken, userController.DeleteUser);

export default router;