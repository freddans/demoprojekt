package org.example.controller;
import org.example.entity.Game;
import org.example.entity.Team;

import javax.persistence.*;

public class TeamController {

  public static final EntityManagerFactory ENTITY_MANAGER_FACTORY = Persistence.createEntityManagerFactory("hibernate");
  public boolean save(Team team) {
    EntityManager entityManager = ENTITY_MANAGER_FACTORY.createEntityManager();
    EntityTransaction transaction = null;

    try {
      transaction = entityManager.getTransaction();
      transaction.begin();
      entityManager.persist(team); // Saves team to database
      transaction.commit();
      return true;
    } catch (Exception e) { // if transaction does not work
      if (transaction != null) {
        System.out.println("TeamController -> Transaction failed: Performing rollback");
        transaction.rollback();
      }
      System.out.println("TeamController -> transaction failed: " + e.getMessage());
      System.out.print("More detailed error: ");
      e.printStackTrace();
    } finally {
      System.out.println("Closing: TeamController -> entityManager");
      entityManager.close();
    }
    return false;
  }
}
