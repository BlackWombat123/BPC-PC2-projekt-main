import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class SelectQueries {

    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("org.sqlite.JDBC");
                connection = DriverManager.getConnection("jdbc:sqlite:database.db");
                System.out.println("Connected to SQLite database.");
            } catch (ClassNotFoundException | SQLException e) {
                System.err.println("Error connecting to SQLite database: " + e.getMessage());
            }
        }
        return connection;
    }
        
            // připojení k databázi (pokud neexistuje, bude vytvořena nová)
       

  public void getAllUsersWithRoleUser() throws SQLException {
    connection=DriverManager.getConnection("jdbc:sqlite:database.db");
    String selectAllUsersWithRoleUser =
        "SELECT id_movie, Name, Director, Year, Rating, Actor";

    try (PreparedStatement prStmt = connection.prepareStatement(selectAllUsersWithRoleUser);
        ResultSet rs = prStmt.executeQuery();) {
      while (rs.next()) {
        System.out.println(rs.getString("id_movie") + " : " + rs.getString("Name") + ", "
            + rs.getString("Director") + ", " + rs.getString("Actor") + ", " + rs.getString("Year")
            + ", " + rs.getString("Rating"));
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  
}