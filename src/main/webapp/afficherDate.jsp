<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Date et Heure</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 700px;
            margin: 50px auto;
            padding: 20px;
            background: #f5f5f5;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 { color: #333; }
        .date-box {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px;
            border-radius: 15px;
            margin: 30px 0;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
        .date-box h2 { margin: 0 0 20px 0; font-size: 2em; }
        .date-box p { font-size: 1.2em; margin: 15px 0; }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-link:hover { background: #5a6268; }
    </style>
</head>
<body>
<div class="container">
    <h1>📅 Date et Heure Actuelles</h1>

    <!-- Définir la locale FR -->
    <fmt:setLocale value="fr_FR" />

    <!-- Créer la variable 'maintenant' -->
    <c:set var="maintenant" value="<%= new java.util.Date() %>" />

    <div class="date-box">
        <h2>⏰ Informations Temporelles</h2>
        <p><strong>Date complète :</strong><br>
            <fmt:formatDate value="${maintenant}" pattern="EEEE dd MMMM yyyy"/></p>
        <p><strong>Heure :</strong><br>
            <fmt:formatDate value="${maintenant}" pattern="HH:mm:ss"/></p>
        <p><strong>Format court :</strong><br>
            <fmt:formatDate value="${maintenant}" type="both" dateStyle="short" timeStyle="short"/></p>
    </div>

    <a href="index.jsp" class="back-link">← Retour à l'accueil</a>
</div>
</body>
</html>
