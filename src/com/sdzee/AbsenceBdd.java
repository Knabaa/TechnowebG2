package com.sdzee;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sdzee.bean.copy.AbsenceBean;

public class AbsenceBdd {
	
	Connection connexion;
	
	public List<AbsenceBean> recupererAbsence() {
		
		List<AbsenceBean> absence = new ArrayList<AbsenceBean>();
        Statement statement = null;
        ResultSet resultat = null;
        loadDatabase();
        
        try {
            statement = (Statement) connexion.createStatement();
            // Exécution de la requête
            resultat = statement.executeQuery("SELECT nom,prenom FROM eleve");
            
            // Récupération des données
            while (resultat.next()) {
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
          
                /* Exécution d'une requête d'écriture */
              
                AbsenceBean absencebean = new AbsenceBean();
                absencebean.setNom(nom);
                absencebean.setPrenom(prenom);
                
                absence.add(absencebean);
            }
        } catch (SQLException e) {
        } finally {
            // Fermeture de la connexion
            try {
                if (resultat != null)
                    resultat.close();
                if (statement != null)
                    statement.close();
                if (connexion != null)
                    connexion.close();
            } catch (SQLException ignore) {
            }
        }
        return absence;
	}
	
	
	private void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }
        try {
            connexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/gapp","root", "");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}