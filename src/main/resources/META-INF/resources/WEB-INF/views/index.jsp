<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Movie API (create deok9)</h1>
<hr>
<h2>API Docs</h2>
<h3>&nbsp; : http://localhost:8080</h3>
<br><hr>
<h2>Get API (need {id} & {pw})</h2>
<h3>&nbsp;&nbsp; : curl -u {id}:{pw} http://localhost:8080/api/getapi</h3>
<br><hr>
<h2>SearchMovie (need {apikey})</h2>
<h3>&nbsp;&nbsp; : curl http://localhost:8080/api/find/{title}/{apikey}</h3>
<br>
<h2>Ranking (need {apikey})</h2>
<h3>&nbsp;&nbsp; : curl http://localhost:8080/api/rank/{apikey}</h3>
</body>
</html>