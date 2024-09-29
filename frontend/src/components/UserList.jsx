import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import axios from "axios";

const UserList = () => {
  const [users, setUsers] = useState([]);

  // Fetch users when the component mounts
  useEffect(() => {
    getUser();
  }, []);

  // Function to fetch users from the API
  const getUser = async () => {
    try {
      const response = await axios.get("http://localhost:4000/users");
      setUsers(response.data);
    } catch (error) {
      console.error("Error fetching users:", error);
    }
  };

  // Function to delete a user
  const deleteUser = async (userId) => {
    try {
      await axios.delete(`http://localhost:4000/users/${userId}`);
      getUser(); // Refresh the user list after deletion
    } catch (error) {
      console.error("Error deleting user:", error);
    }
  };

  return (
    <div>
      <h1 className="title">Users</h1>
      <h1 className="subtitle">List Of Users</h1>
      <Link to="/users/add" className="button is-primary mb-2">
        Add New
      </Link>
      <table className="table is-striped is-fullwidth">
        <thead>
          <tr>
            <th>No</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          {users.map((user, index) => (
            <tr key={user.user_Id}>
              <td>{index + 1}</td>
              <td>{user.name}</td>
              <td>{user.email}</td> {/* Changed from price to email */}
              <td>{user.role}</td>
              <td>
                <Link
                  to="/users/update"
                  state={{ id: user.user_Id }} // Pass user ID to the update page
                  className="button is-small is-info"
                  style={{ marginRight: "5px" }}
                >
                  Update
                </Link>
                <button
                  onClick={() => deleteUser(user.user_Id)} // Delete user on button click
                  className="button is-small is-danger"
                >
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default UserList;
