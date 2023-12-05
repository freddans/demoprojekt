package org.example.entity;


import javax.persistence.*;

@Entity
@Table(name = "games")
public class Game {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "game_id")
  private int id; // primary key
  @Column(name = "game_title", length = 30)
  private String name;

  // Empty Constructor
  public Game() {
  }

  // Constructor w/o id
  public Game(String name) {
    this.name = name;
  }

  // Full Constructor
  public Game(int id, String name) {
    this.id = id;
    this.name = name;
  }

  // Getters and Setters
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
}
