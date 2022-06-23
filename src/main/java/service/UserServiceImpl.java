package service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;
import utilities.JsonRequest;

/**
 *
 * @author Tatiana Salazar
 */
public class UserServiceImpl implements IUserService {

    private static IUserService instance;

    private UserServiceImpl() {

    }

    /*Implementación del patrón Singletón*/
    public static IUserService getInstance() {
        if (instance == null) {
            instance = new UserServiceImpl();
            return instance;
        } else {
            return instance;
        }
    }

    @Override
    public ArrayList<User> findAllUsers() {
        String salida = "";
        try {
            URL url = new URL("https://62b34be34f851f87f4588730.mockapi.io/Users");
            HttpURLConnection apiService = (HttpURLConnection) url.openConnection();
            apiService.setRequestMethod("GET");
            apiService.setRequestProperty("Accept", "application/json");
            if (apiService.getResponseCode() == 200) {
                InputStreamReader entrada = new InputStreamReader(apiService.getInputStream());
                BufferedReader lectura = new BufferedReader(entrada);
                salida = lectura.readLine();
            } else {
                salida = "";
                System.out.println("No se pudo conectar a la API: " + apiService.getResponseCode());
            }
            apiService.disconnect();

        } catch (Exception ex) {
            System.out.println("Error API: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public User saveUser(User usuario) {
        try {
            URL url = new URL("https://62b34be34f851f87f4588730.mockapi.io/Users");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json");
            con.setRequestProperty("Accept", "application/json");
            con.setDoOutput(true);
            String usuarioJson = JsonRequest.userToJson(usuario);
            try ( OutputStream os = con.getOutputStream()) {
                byte[] input = usuarioJson.getBytes("utf-8");
                os.write(input, 0, input.length);
            }
            try ( BufferedReader br = new BufferedReader(
                    new InputStreamReader(con.getInputStream(), "utf-8"))) {
                StringBuilder response = new StringBuilder();
                String responseLine = null;
                while ((responseLine = br.readLine()) != null) {
                    response.append(responseLine.trim());
                }
                String userJson = response.toString();
                return JsonRequest.jsonToUser(userJson);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    @Override
    public User findUserById() {
        return null;
    }
}
