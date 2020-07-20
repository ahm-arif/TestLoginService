import axios from "axios";
import { API_BASE_URL ,ACCESS_TOKEN} from "../static/config/config";

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
    localStorage.removeItem(ACCESS_TOKEN);
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
    const user = JSON.parse(localStorage.getItem('user'));
    if (user){
      return user;
  }
}

}

export default new AuthService();
