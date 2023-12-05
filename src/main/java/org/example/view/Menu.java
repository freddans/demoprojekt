package org.example.view;

import org.example.controller.GameController;
import org.example.controller.PlayerController;
import org.example.controller.TeamController;
import org.example.entity.Game;
import org.example.entity.Player;
import org.example.entity.Team;

import java.util.Scanner;

public class Menu {

  private GameController gameController;
  private TeamController teamController;
  private PlayerController playerController;

  public Menu(GameController gameController, TeamController teamController, PlayerController playerController) {
    this.gameController = gameController;
    this.teamController = teamController;
    this.playerController = playerController;
  }

  public void showMainMenu() {
    System.out.println("Menu:");
    System.out.println("1. Games");
    System.out.println("2. Teams");
    System.out.println("3. Players");
    System.out.println("4. Matches");
    handleMainMenu();
  }

  private void handleMainMenu() {
    Scanner mainScanner = new Scanner(System.in);
    System.out.print("Input choice 💬: ");
    String userChoice = mainScanner.nextLine();
    switch (userChoice) {
      case "1":
        // Open games menu
        showGamesMenu();
        break;
      case "2":
        showTeamsMenu();
        break;
      case "3":
        showPlayersMenu();
        break;
      case "4":
        showMatchesMenu();
        break;
      default:
        break;
    }
  }

  public void showGamesMenu() {
    System.out.println("Games Menu:");
    System.out.println("1. Add new game");
    System.out.println("2. Update existing game");
    System.out.println("3. Delete game");
    System.out.println("4. List all games");
    System.out.println("5. List specific game by id");
    System.out.println("0. Back to Menu");
    handleGamesMenu();
  }

  private void handleGamesMenu() {
    Scanner gameScanner = new Scanner(System.in);
    System.out.print("Input choice 💬: ");
    String userChoice = gameScanner.nextLine();
    switch (userChoice) {
      case "1":
        // Add game
        // call method
        Game game = new Game();
        System.out.print("Add Game title 💬: ");
        String gameName = gameScanner.nextLine();

        if (gameController.save(new Game(gameName))) {
          System.out.println("✅ Game: " + gameName + " has been added");
        } else {
          System.out.println("❌ Game: " + gameName + " could not be added");
        }
        break;
      case "2":
        // Update game
        // call method
        break;
      case "3":
        // Delete game
        // call method
        break;
      case "4":
        // List all games
        // call method
        break;
      case "5":
        // List specific game by id
        // call method
        break;
      case "6":
        // Back to main menu
        showMainMenu();
        break;
      default:
        break;
    }
  }

  public void showTeamsMenu() {
    System.out.println("Teams Menu:");
    System.out.println("1. Add new team");
    System.out.println("2. Update existing team");
    System.out.println("3. Delete team");
    System.out.println("4. List all teams");
    System.out.println("5. List specific team by id");
    System.out.println("0. Back to Menu");
    handleTeamsMenu();
  }

  private void handleTeamsMenu() {
    Scanner teamScanner = new Scanner(System.in);
    System.out.print("Input choice: ");
    String userChoice = teamScanner.nextLine();
    switch (userChoice) {
      case "1":
        // Add team
        // call method
        Team team = new Team();
        System.out.print("Add team 💬: ");
        String teamName = teamScanner.nextLine();
        System.out.println("Input id for wich game:");
        System.out.println("1: Counter-Strike 2");
        System.out.println("2: EA FC 24");
        System.out.println("3: League of Legends");
        int gameId = teamScanner.nextInt();

        String nameOfGame = "";
        if (gameId == 1) {
          nameOfGame = "Counter-Strike 2";
        } else if (gameId == 2) {
          nameOfGame = "EA FC 24";
        } else if (gameId == 3) {
          nameOfGame = "League of Legends";
        }

        if (teamController.save(new Team(teamName, gameId))) {
          System.out.println("✅ Team: " + teamName + " has been added for game: " + nameOfGame);
        } else {
          System.out.println("❌ Team: " + teamName + " could not be added");
        }
        break;
      case "2":
        // Update team
        // call method
        break;
      case "3":
        // Delete team
        // call method
        break;
      case "4":
        // List all teams
        // call method
        break;
      case "5":
        // List specific team by id
        // call method
        break;
      case "6":
        // Back to main menu
        showMainMenu();
        break;
      default:
        break;
    }
  }



  public void showPlayersMenu() {
    System.out.println("Players Menu:");
    System.out.println("1. Add new player");
    System.out.println("2. Update existing player");
    System.out.println("3. Delete player");
    System.out.println("4. List all players");
    System.out.println("5. List specific player by id");
    System.out.println("0. Back to Menu");
    handlePlayersMenu();
  }

  private void handlePlayersMenu() {
    Scanner playerScanner = new Scanner(System.in);
    System.out.print("Input choice 💬: ");
    String userChoice = playerScanner.nextLine();
    switch (userChoice) {
      case "1":
        // Add Player
        // call method
        Player player = new Player();
        System.out.println("Add new Player");
        System.out.print("Input First Name 💬: ");
        String firstName = playerScanner.nextLine();
        System.out.print("Input Last Name 💬: ");
        String lastName = playerScanner.nextLine();
        System.out.print("Input Nickname 💬: ");
        String nickName = playerScanner.nextLine();
        System.out.print("Input Adress 💬: ");
        String adress = playerScanner.nextLine();
        System.out.print("Input Zip Code 💬: ");
        String zipCode = playerScanner.nextLine();
        System.out.print("Input Postal Adress 💬: ");
        String postalAdress = playerScanner.nextLine();
        System.out.print("Input Country 💬: ");
        String country = playerScanner.nextLine();
        System.out.print("Input E-Mail 💬: ");
        String eMail = playerScanner.nextLine();
        System.out.print("Input Team ID 💬: ");
        int team_id = playerScanner.nextInt();

        if (playerController.save(new Player(firstName, lastName, nickName, adress, zipCode, postalAdress, country, eMail, team_id))) {
          System.out.println("✅ Player: " + firstName + " '" + nickName + "' " + lastName + " has been added");
        } else {
          System.out.println("❌ Player: " + firstName + " '" + nickName + "' " + lastName + " could not be added");
        }
        break;
      case "2":
        // Update Player
        // call method
        break;
      case "3":
        // Delete Player
        // call method
        break;
      case "4":
        // List all Players
        // call method
        break;
      case "5":
        // List specific Player by id
        // call method
        break;
      case "6":
        // Back to main menu
        showMainMenu();
        break;
      default:
        break;
    }
  }

  public void showMatchesMenu() {
    System.out.println("Matches Menu:");
    System.out.println("1. Add new match");
    System.out.println("2. Update existing match");
    System.out.println("3. Delete match");
    System.out.println("4. List all matches");
    System.out.println("5. List specific match by id");
    System.out.println("0. Back to Menu");
    handleMatchesMenu();
  }

  private void handleMatchesMenu() {
    Scanner matchScanner = new Scanner(System.in);
    System.out.print("Input choice: ");
    String userChoice = matchScanner.nextLine();
    switch (userChoice) {
      case "1":
        // Add match
        // call method
        break;
      case "2":
        // Update match
        // call method
        break;
      case "3":
        // Delete match
        // call method
        break;
      case "4":
        // List all matches
        // call method
        break;
      case "5":
        // List specific match by id
        // call method
        break;
      case "6":
        // Back to main menu
        showMainMenu();
        break;
      default:
        break;
    }
  }

}
