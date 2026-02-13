<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sua Rádio</title>

<style>
body{
margin:0;
padding:0;
font-family:Arial, Helvetica, sans-serif;
background:#000;
color:#fff;
overflow-x:hidden;
}

/* Vídeo de fundo */
video{
position:fixed;
right:0;
bottom:0;
min-width:100%;
min-height:100%;
z-index:-2;
object-fit:cover;
}

/* Overlay escuro */
.overlay{
position:fixed;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.6);
z-index:-1;
}

/* Logo central */
.logo{
position:absolute;
top:40%;
left:50%;
transform:translate(-50%,-50%);
text-align:center;
font-size:40px;
font-weight:bold;
}

/* Rodapé */
footer{
position:fixed;
bottom:0;
width:100%;
text-align:center;
padding:5px;
font-size:12px;
background:rgba(0,0,0,0.4);
}
</style>
</head>

<body>

<!-- Vídeo de fundo -->
<video autoplay muted loop>
<source src="video.mp4" type="video/mp4">
</video>

<div class="overlay"></div>

<div class="logo">
SUA RÁDIO ONLINE
</div>

<!-- PLAYER PEQUENO FIXO -->
<div style="
position:fixed;
bottom:8px;
left:50%;
transform:translateX(-50%);
z-index:9999;
width:170px;
height:45px;
overflow:hidden;
border-radius:8px;
">

<iframe 
src="COLE_AQUI_O_LINK_EMBED_DA_CASTER"
style="
width:100%;
height:120px;
transform:scale(0.5);
transform-origin:top center;
border:0;
">
</iframe>

</div>

<footer>
© 2026 - Sua Rádio Online
</footer>

</body>
</html>
