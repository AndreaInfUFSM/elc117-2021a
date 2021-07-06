import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

// Exemplo simples de requisição HTTP usando somente as APIs do JDK 
// Este código pode ser reduzido usando APIs especializadas, por exemplo Apache HttpClient
public class HttpURLConnectionExample {

  public static void main(String[] args) throws Exception {
    HttpURLConnectionExample http = new HttpURLConnectionExample();
    http.sendGet();
  }

  private void sendGet() throws Exception {

    String urlstr = "https://api.github.com/users/andreainfufsm";
        
    URL url = new URL(urlstr);
    HttpURLConnection con = (HttpURLConnection) url.openConnection();
    con.setRequestMethod("GET");

    System.out.println("\nSending GET request to URL: " + urlstr);
    int responseCode = con.getResponseCode();
    System.out.println("Response Code: " + responseCode);

    // Cria buffers para leitura de dados a partir da conexão HTTP estabelecida
    BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
    StringBuffer response = new StringBuffer();
    String inputLine;
		
    // Lê a resposta linha por linha
    while ((inputLine = in.readLine()) != null) {
      response.append(inputLine);
    }
    in.close();

    System.out.println(response.toString());

  }
}

