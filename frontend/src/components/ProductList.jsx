import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import axios from "axios";

const ProductList = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    getProducts();
  }, []);

  const getProducts = async () => {
    const response = await axios.get("http://localhost:4000/product");
    setProducts(response.data);
  };

  const deleteProduct = async (productId) => {
    await axios.delete(`http://localhost:4000/product/${productId}`);
    getProducts();
  };

  return (
    <div>
      <h1 className="title">Products</h1>
      <h1 className="subtitle">List Of Products</h1>
      <Link to={`/products/add`} className="button is-primary mb-2">
        Add New
      </Link>
      <table className="table is-striped is-fullwidth">
        <thead>
          <tr>
            <th>No</th>
            <th>Name</th>
            <th>Price</th>
            <th>From</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          {products.map((product, index) => (
            <tr key={product.uuid}>
              <td>{index + 1}</td>
              <td>{product.name}</td>
              <td>$ {product.price}</td>
              <td>{product.user.name}</td>
              <td>
                <Link
                  to="/products/update"
                  state={{ id: product.uuid }} // Passing the id in the state
                  className="button is-small is-info"
                  style={{ marginRight: "5px" }}
                >
                  Update
                </Link>

                <button
                  onClick={() => deleteProduct(product.uuid)}
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

export default ProductList;
