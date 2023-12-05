package org.example.controller;
import org.example.entity.Game;
import javax.persistence.*;

public class GameController {
  public static final EntityManagerFactory ENTITY_MANAGER_FACTORY = Persistence.createEntityManagerFactory("hibernate");
  public boolean save(Game game) {
    EntityManager entityManager = ENTITY_MANAGER_FACTORY.createEntityManager();
    EntityTransaction transaction = null;

    try {
      transaction = entityManager.getTransaction();
      transaction.begin();
      entityManager.persist(game); // Saves game to database
      transaction.commit();
      return true;
    } catch (Exception e) { // if transaction does not work
      if (transaction != null) {
        System.out.println("GameController -> Transaction failed: Performing rollback");
        transaction.rollback();
      }
      System.out.println("GameController -> transaction failed: " + e.getMessage());
      System.out.print("More detailed error: ");
      e.printStackTrace();
    } finally {
      System.out.println("Closing: GameController -> entityManager");
      entityManager.close();
    }
    return false;
  }
}
