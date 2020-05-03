/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.spring.controllers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Service;

/**
 *
 * @author danie
 */
@Service
public class AgentService {

    public List<Agent> getAllAgents() {
        EntityManager em = DBUtil.getEmf().createEntityManager();
        TypedQuery<Agent> tq = em.createNamedQuery("Agent.findAll", Agent.class);

        List<Agent> agentsList = new ArrayList<>();
        try {
            agentsList = tq.getResultList();
        } catch (Exception e) {
            System.out.println(e);
        }
        return agentsList;
    }

    public void addAnAgent(Agent a) { //Insert new agent into DB
        EntityManager em = DBUtil.getEmf().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.persist(a);
            transaction.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }

    public Agent getAgentById(int id) {
        EntityManager em = DBUtil.getEmf().createEntityManager();
        TypedQuery<Agent> tq = em.createNamedQuery("Agent.findByAgentId", Agent.class).setParameter("agentId", id);

        Agent a = null;
        try {
            a = tq.getSingleResult();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return a;
    }

    public void editAgent(Agent a) {
        EntityManager em = DBUtil.getEmf().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.merge(a);
            transaction.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }

    public void deleteAnAgent(int id) {
        EntityManager em = DBUtil.getEmf().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            Agent a = getAgentById(id);
            transaction.begin();
            em.remove(em.merge(a));
            transaction.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }
}
