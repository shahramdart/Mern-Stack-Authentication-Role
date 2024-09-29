import User from "../Models/userModel.js";
import argon2 from "argon2";

// ? login
export const login = async (req, res) => {
  const user = await User.findOne({
    where: {
      email: req.body.email,
    },
  });
  if (!user) return res.status(404).json({ msg: "User not Found!" });
  const match = await argon2.verify(user.password, req.body.password);
  if (!match) return res.status(400).json({ msg: "Wrong Password" });
  req.session.userId = user.user_Id;
  const user_Id = user.user_Id;
  const name = user.name;
  const email = user.email;
  const role = user.role;
  res.status(200).json({ user_Id, name, email, role });
};

export const getUser = async (req, res) => {
  if (!req.session.userId)
    return res.status(401).json({ msg: "User not authenticated" });
  const user = await User.findOne({
    attributes: ["user_Id", "name", "email", "role"],
    where: {
      user_Id: req.session.userId,
    },
  });
  if (!user) return res.status(404).json({ msg: "User not Found!" });
  res.status(200).json(user);
};

// ? logout
export const logout = (req, res) => {
  req.session.destroy((err) => {
    if (err)
      return res.status(400).json({ msg: "Logout failed, please try again." });
    res.status(200).json({ msg: "Logout successful." });
  });
};
