package org.example;

import org.example.controller.GameController;
import org.example.controller.PlayerController;
import org.example.controller.TeamController;
import org.example.entity.Player;
import org.example.view.Menu;

import java.awt.*;

public class Main {
  public static void main(String[] args) {
    GameController gameController = new GameController();
    TeamController teamController = new TeamController();
    PlayerController playerController = new PlayerController();

    Menu menu = new Menu(gameController, teamController, playerController);
    menu.showMainMenu();
  }
}