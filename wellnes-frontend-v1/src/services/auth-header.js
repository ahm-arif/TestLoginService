
import { API_BASE_URL ,ACCESS_TOKEN} from "../static/config/config";


export default function authHeader() {
  const user = JSON.parse(localStorage.getItem('user'));

  if (user && user.accessToken) {
    return { Authorization: 'Bearer ' + user.accessToken }; // for Spring Boot back-end

  } else {
    return { Authorization: 'Bearer ' + localStorage.getItem(ACCESS_TOKEN) };
  }
}
