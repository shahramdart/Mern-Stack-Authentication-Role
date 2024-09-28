import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import UserRoutes from "./Routes/userRoute.js";
import AuthRoutes from "./Routes/authRoute.js";
import ProductRoutes from "./Routes/productRoute.js";
import sequelizeStore from "connect-session-sequelize";
import db from "./Config/database.js";

dotenv.config();

// (async () => {
//   try {
//     await db.authenticate();
//     console.log("Database connection established successfully.");
//     await db.sync();
//     console.log("Database synchronized successfully.");
//   } catch (error) {
//     console.error("Error connecting or synchronizing the database:", error);
//   }
// })();

const PORT = process.env.PORT || 4000;
const app = express();

const sessionStore = sequelizeStore(session.Store);
const store = new sessionStore({
  db: db,
});

// ? Configure session middleware
app.use(
  session({
    secret: process.env.SESS_SECRET, // ? Secret for signing session ID cookies
    resave: false, // ? Do not save session if unmodified
    saveUninitialized: true, // ? Save new sessions to store
    store: store,
    cookie: {
      secure: "auto", // ? Use secure cookies in production
    },
  })
);

// ? Configure CORS to allow requests from the frontend
const corsOptions = {
  credentials: true,
  origin: "http://localhost:3000",
};
app.use(cors(corsOptions));

app.use(express.json());

// Routes
app.use(UserRoutes);
app.use(AuthRoutes);
app.use(ProductRoutes);

// Sync session store
// store.sync();

app.listen(PORT, () => {
  console.log(`Server is working at http://localhost:${PORT}`);
});
