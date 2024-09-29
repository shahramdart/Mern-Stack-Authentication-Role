import Product from "../Models/productModel.js";
import User from "../Models/userModel.js";
import { Op, where } from "sequelize";

// ? getting all Product
export const getProducts = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Product.findAll({
        attributes: ["uuid", "name", "price"],
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      response = await Product.findAll({
        attributes: ["uuid", "name", "price"],
        where: {
          userId: req.userId,
        },
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// ? getting Product by id
export const getProductById = async (req, res) => {
  try {
    const product = await Product.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!product) return res.status(404).json({ msg: "Data tidak ditemukan" });
    let response;
    if (req.role === "admin") {
      response = await Product.findOne({
        attributes: ["uuid", "name", "price"],
        where: {
          id: product.id,
        },
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      response = await Product.findOne({
        attributes: ["uuid", "name", "price"],
        where: {
          [Op.and]: [{ id: product.id }, { userId: req.userId }],
        },
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// ? creating  Product and showing new Product by id
export const createProduct = async (req, res) => {
  const { name, price } = req.body;
  try {
    const newProduct = await Product.create({
      name: name,
      price: price,
      userId: req.userId,
    });

    const productData = {
      userId: newProduct.userId,
      name: newProduct.name,
      price: newProduct.price,
    };

    res.status(200).json(productData);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// ? Updating Product by id
export const updateProduct = async (req, res) => {
  try {
    const product = await Product.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!product) return res.status(404).json({ msg: "Product not found" });
    const { name, price } = req.body;
    if (req.role === "admin") {
      await Product.update({ name, price }, { where: { id: product.id } });
    } else {
      if (req.userId !== product.userId)
        return res
          .status(403)
          .json({ msg: "You do not have permission to update this product." });

      await Product.update(
        { name, price },
        { where: { [Op.and]: [{ id: product.id }, { userId: req.userId }] } }
      );
    }
    const updatedProduct = await Product.findOne({
      where: {
        uuid: req.params.id,
      },
      attributes: ["name", "price"],
    });
    res.status(200).json(updatedProduct);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// ? Deleting Product by id
export const deleteProduct = async (req, res) => {
  const product = await Product.findOne({
    where: {
      uuid: req.params.id,
    },
  });
  if (!product) return res.status(404).json({ msg: "User not Found!" });
  try {
    await Product.destroy({
      where: {
        uuid: req.params.id,
      },
    });
    res.status(200).json({ msg: "User Deleting successful" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
