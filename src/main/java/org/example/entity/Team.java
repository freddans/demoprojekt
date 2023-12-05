package org.example.entity;

import javax.persistence.*;

@Entity
@Table(name = "teams")
public class Team {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "team_id")
  private int id; // primary key
  @Column(name = "team_name", length = 30)
  private String name;
  @Column(name = "game_id")
  private int game_id; // FOREIGN KEY (game_id) REFERENCES Game(id);

  // Empty Constructor
  public Team() {
  }

  // Constructor w/o id
  public Team(String name, int game_id) {
    this.name = name;
    this.game_id = game_id;
  }

  // Full Constructor
  public Team(int id, String name, int game_id) {
    this.id = id;
    this.name = name;
    this.game_id = game_id;
  }

  // Setters and Getters
  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getGame_id() {
    return game_id;
  }

  public void setGame_id(int game_id) {
    this.game_id = game_id;
  }
}
