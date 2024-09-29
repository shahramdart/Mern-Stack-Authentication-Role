import express from "express";
const router = express.Router();
import { login, logout, getUser } from "../Controller/auth.js";

router.get("/getUser", getUser);
router.post("/login", login);
router.delete("/logout", logout);

export default router;
