// AutoExec.java
package org.example.autoexec;

import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class AutoExec {

  public static void executeSchemaAndQuery() {
    try {
      // Load JDBC driver and establish a connection
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pentagon", "root", "qwerty123");

      // Execute schema.sql
      executeScript(connection, "/Users/freddan/IdeaProjects/Udemy/Java/demoprojekt/execinfo.sql");

      System.out.println("Schema executed successfully.");

    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  private static void executeScript(Connection connection, String scriptPath) {
    try (Statement statement = connection.createStatement();
         BufferedReader reader = new BufferedReader(new FileReader(scriptPath))) {

      StringBuilder script = new StringBuilder();
      String line;
      while ((line = reader.readLine()) != null) {
        script.append(line).append("\n");
      }

      // Print the script
      System.out.println("Executing script:\n" + script.toString());

      // Execute the script
      if (statement.execute(script.toString())) {
        System.out.println("Script executed successfully.");
      } else {
        System.out.println("Script execution returned false. Please check for errors.");
      }

    } catch (Exception e) {
      System.err.println("Error executing script:");
      e.printStackTrace();
    }
  }


}
