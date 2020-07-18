import axios from "axios";
import { API_BASE_URL } from "../static/config/config";

const API_URL = API_BASE_URL+"/api/auth/";

class AuthService {
  login(username, password) {
    return axios
      .post(API_URL + "signin", {
        username,
        password
      })
      .then(response => {
        if (response.data.accessToken) {
          localStorage.setItem("user", JSON.stringify(response.data));
        }

        return response.data;
      });
  }

  logout() {
    localStorage.removeItem("user");
    this.setState({
      authenticated: false,
      currentUser: null
    });
    //Alert.success("You're safely logged out!");
  }

  register(username, email, password,roles) {
    return axios.post(API_URL + "signup", {
      username,
      email,
      password,
      role:[roles]
    },{
      headers: {
        'content-type': 'application/json'
      } 
    });
  }

  getCurrentUser() {
    return JSON.parse(localStorage.getItem('user'));;
  }
}

export default new AuthService();
