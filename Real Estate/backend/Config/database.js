import { Sequelize } from "sequelize";

const db = new Sequelize("real_estate", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
