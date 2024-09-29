import { Sequelize } from "sequelize";

const db = new Sequelize("MERN_AUTHENTICATION", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
