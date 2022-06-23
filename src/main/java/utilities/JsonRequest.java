package utilities;

import com.google.gson.Gson;
import model.User;

/**
 *
 * @author Tatiana Salazar
 */
public class JsonRequest {

    public static String userToJson(User usuario) {
        Gson gson = new Gson();
        return gson.toJson(usuario);
    }

    public static User jsonToUser(String jsonUsuario) {
        Gson gson = new Gson();
        User user = gson.fromJson(jsonUsuario, User.class);
        return user;
    }
}
