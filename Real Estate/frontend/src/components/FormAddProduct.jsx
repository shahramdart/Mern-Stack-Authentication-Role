import React from "react";

const FormAddProduct = () => {
  return (
    <div>
      <h1 className="title">Products</h1>
      <h1 className="subtitle">Add New Products</h1>
      <div className="card is-shadowless">
        <div className="card-content">
          <div className="content">
            <form>
              <div className="field">
                <label htmlFor="label">Name</label>
                <div className="control mt-2">
                  <input type="text" className="input" placeholder="Name" />
                </div>
              </div>
              <div className="field">
                <label htmlFor="label">Price</label>
                <div className="control mt-2">
                  <input type="text" className="input" placeholder="Name" />
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

export default FormAddProduct;
