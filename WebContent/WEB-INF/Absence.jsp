<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Absence</title>
</head>

<body>
<div id="wrapper">
        <div id="page-wrapper"> 
        
             <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Nom </th>
                                            <th>Prénom </th>
                                            <th> Absence</th>
                                             <!-- lien sur le nom pour accèder à la fiche élève -->
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <li>
                                            <c:forEach var="absencebean" items="${abs}">
                                            <c:out value="${absencebean.nom}"/>
                                            <c:out value="${absencebean.prenom}"/>
                                            </li>
                                            
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="">
                                                </label>
                                                </div>
                                            </c:forEach>
                                           
                                        </tr>
             
                                    </tbody>
                                </table>
                            </div>
                        </div>
                 <button type="submit">Soumettre les absences</button>
</body>
</html>