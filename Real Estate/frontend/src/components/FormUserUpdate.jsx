import React from "react";

const FormUserUpdate = () => {
  return (
    <div>
      <h1 className="title">Users</h1>
      <h1 className="subtitle">Update User</h1>
      <div className="card is-shadowless">
        <div className="card-content">
          <div className="content">
            <form>
              <div className="field">
                <label htmlFor="label">Name</label>
                <div className="control">
                  <input type="text" className="input" placeholder="Name" />
                </div>
              </div>
              <div className="field">
                <label htmlFor="label">Email</label>
                <div className="control">
                  <input type="text" className="input" placeholder="Email" />
                </div>
              </div>
              <div className="field">
                <label htmlFor="label">Password</label>
                <div className="control">
                  <input
                    type="password"
                    className="input"
                    placeholder="*****"
                  />
                </div>
              </div>
              <div className="field">
                <label htmlFor="label">Confirm Password</label>
                <div className="control">
                  <input
                    type="password"
                    className="input"
                    placeholder="*****"
                  />
                </div>
              </div>
              <div className="field">
                <label htmlFor="label">Role</label>
                <div className="select is-fullwidth">
                  <select name="" id="">
                    <option value="admin">Admin</option>
                    <option value="user">User</option>
                  </select>
                </div>
              </div>
              <div className="field">
                <div className="control">
                  <button className="button is-success">Save</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
};

export default FormUserUpdate;
