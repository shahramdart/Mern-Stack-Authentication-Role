import User from "../Models/userModel.js";
import argon2 from "argon2";
// ? getting all users
export const getUsers = async (req, res) => {
  try {
    const users = await User.findAll({
      attributes: ["user_Id", "name", "email", "role"],
    });
    res.status(200).json(users);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// ? getting user by id
export const getUserById = async (req, res) => {
  try {
    const userId = await User.findOne({
      attributes: ["user_Id", "name", "email", "role"],
      where: {
        user_Id: req.params.id,
      },
    });
    res.status(200).json(userId);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// ? creating user and showing new user by id
export const createUser = async (req, res) => {
  const { name, email, password, confirmPassword, role } = req.body;
  if (password !== confirmPassword)
    return res
      .status(400)
      .json({ msg: "Password doesn't match Confirm Password" });

  const hashPassword = await argon2.hash(password);
  try {
    const newUser = await User.create({
      name,
      email,
      password: hashPassword,
      role,
    });
    const userId = newUser.user_Id;
    const createdUser = await User.findOne({
      attributes: ["user_Id", "name", "email", "role"],
      where: { user_Id: userId },
    });

    res.status(200).json(createdUser);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// ? Updating user by id
export const updateUser = async (req, res) => {
  const { name, email, password, confirmPassword, role } = req.body;

  // ? Calling the user by ID
  const user = await User.findOne({
    where: {
      user_Id: req.params.id,
    },
  });
  if (!user) return res.status(404).json({ msg: "User not Found!" });
  let hashPassword;
  if (!password) {
    hashPassword = user.password;
  } else {
    if (password !== confirmPassword) {
      return res
        .status(400)
        .json({ msg: "Password doesn't match Confirm Password" });
    }
    hashPassword = await argon2.hash(password);
  }

  try {
    await User.update(
      {
        name,
        email,
        password: hashPassword,
        role,
      },
      {
        where: {
          user_Id: req.params.id,
        },
      }
    );

    // ? Calling user when updated
    const updatedUser = await User.findOne({
      where: {
        user_Id: req.params.id,
      },
      attributes: ["user_Id", "name", "email", "role"],
    });

    res.status(200).json(updatedUser);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
// ? Deleting user by id
export const deleteUser = async (req, res) => {
  const user = await User.findOne({
    where: {
      user_Id: req.params.id,
    },
  });
  if (!user) return res.status(404).json({ msg: "User not Found!" });
  try {
    await User.destroy({
      where: {
        user_Id: req.params.id,
      },
    });

    res.status(200).json({ msg: "User Deleting successful" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
