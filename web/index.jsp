<%-- 
    Document   : index
    Created on : 28/03/2018, 10:19:45 PM
    Author     : Luis Salinas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%

    HttpSession miSess = request.getSession();
    String idPer = miSess.getAttribute("idPersona") == null ? "0" : miSess.getAttribute("idPersona").toString();
    ldn.Usuario perX = new ldn.Usuario(Integer.parseInt(idPer));

    seguridad.Acceso seg = new seguridad.Acceso(Integer.parseInt(idPer));

    if (!seg.VALIDO()) {
        response.sendRedirect("login.jsp");
    }

    String nombre = perX.NOMBRECOMPLETO();


%>
<!DOCTYPE html>
<html>
    <head>
        <title>W.U. "Contigo"</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="CSS/estilo1.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/fontello.css"/>
        <link type="text/css" rel="stylesheet" href="CSS/materialize.css" media="screen,projection">
    </head>
    <body>

        <!--<%=nombre%>-->
        <header>
            <!--Todos los elementos del nav -->
            <!--<div class="contenedorB">
                <div class="chip">
                    <img src="IMAGENES/nadia.jpg" alt="">
                    <p>Bienvenido <%=nombre%></p>
                </div>
            </div> -->

            <input type="checkbox" id="emenu">
            <label for="emenu"><img src="IMAGENES/android-icon-36x36.png" alt=""/></label>
            <nav class="menu">

                <ul>
                    <li class="actual"><a href="index.jsp"> Inicio</a></li>
                    <li><a href="index.jsp#about">Acerca de nosotros</a></li>
                    <li><a href="EmergenciasActuales.jsp">Emergencias</a>

                    </li>  
                    <li><a href="MaterialFaltante.jsp">Material Requerido</a>

                    </li>
                    <li><a href="Especialistas.jsp">Especialistas</a>

                    </li>
                    <li><a href="salir.jsp">Salir</a></li>

                </ul>
            </nav>
        </header>
        <!--Imagen principal con contenedor-->


        <section class="primer">
            <div class="row" style="margin-top: 10%;position: absolute;width: 60%;">
                <div class="col s12 m5" >
                    <div class="card-panel teal  white" style="border-left: solid #000033;">
                        <span class="black-text">Bienvenido <%=nombre%>
                        </span>
                    </div>
                </div>
            </div>
            <section class="contnom"> 
                <p>AetherCode </p>
            </section>
        </section>


        <section class="cajas">
            <section class="contenedor2" id="about">
                <section id="cont21">
                    <h1 class="titulo">Acerca de nosotros...</h1>
                    <p class="texto "> WUN S.A de C.V desarrolla software que satisface 
                        las necesidades de los clientes para que se ajusten a los parámetros 
                        requeridos y siempre en beneficios de ellos, a través de la capacitación
                        y actualización de su personal en tecnologías y herramientas vanguardistas,
                        preocupados por la creación e innovación de aplicaciones. Comprometidos con el 
                        resultado satisfactorio de cada uno de los proyectos que se les otorgan, 
                        proporcionando calidad, además de una atención especializada para cada uno 
                        de nuestros clientes. Estamos seguros de que, como empresa, logrará dar a los 
                        clientes un servicio de Desarrollo de Software que se ajuste a sus necesidades y
                        que sin duda sea útil y rápido.</p>
                </section>    


                <div class="adjust">
                    <section class="adjust1">
                        <img src="IMAGENES/bienvenido.jpg" alt="">
                    </section>
                    <section class="adjust2">
                        <p class="texto1 contenidoAlado">W. U. por sus siglas en ingles "With You" 
                            es una página web que ayudará a cualquier hospital a la mejora de su administración.
                            Asi que si llegaste hasta aqui, significa que sin duda esta aplicación te 
                            será de mucha ayuda.</p>
                    </section>
                </div>
                <section id="cont23" >
                    <h1 class="titulo contenidoAlado">Objetivo General</h1>
                    <p class="texto1 contenidoAlado">Desarrollar software que ayude a los hospitales en la administración de sus actividades</p><br/>
                    <h1 class="titulo contenidoAlado">Mision</h1>
                    <p class="texto1 contenidoAlado">WUNSoft desarrolla y ofrece al sector salud 
                        una herramienta enfocada a mejorar la comunicación entre 
                        instituciones, y poder así conocer la disponibilidad de sus
                        servicios de una manera más efectiva y rápida con el fin de 
                        lograr un mejor servicio para sus clientes mediante una administración de calidad</p><br/>
                    <h1 class="titulo contenidoAlado">Vision</h1>
                    <p class="texto1 contenidoAlado">WUNSoft empresa líder en comunicación de instituciones de salud,
                        tanto en el sector privado como en el público,
                        en calidad e innovación de un sistema moderno que 
                        pueda hacer un avance tecnológico para la sociedad.</p><br/>
                </section>

            </section>    
        </section> 

        <section id="info">
            <h5>Conoce a los desarrolladores:</h5>
            <div class="contenedor">
                <div class="info-des">
                    <img src="IMAGENES/nadia.jpg" alt="">
                    <h6>Nadia</h6>
                </div>
                <div class="info-des">
                    <img src="IMAGENES/frida.jpg" alt="">
                    <h6>Frida</h6>
                </div>
                <div class="info-des">
                    <img src="IMAGENES/juan.jpg" alt="">
                    <h6>Juan</h6>
                </div>
                <div class="info-des">
                    <img src="IMAGENES/julian.jpg" alt="">
                    <h6>Julian</h6>
                </div>
                
            </div>
        </section>
        <section class="cajas">
            <section class="contenedor4">
                <h1 class="titulo">Conoce nuestros servicios: </h1>
            </section>
        </section>
        <a href="EmergenciasActuales.jsp">
            <section class="servicio">
                <img src="IMAGENES/emergencias.jpg" alt="">
                <div class="contenedor">
                    <h2>Emergencias</h2>
                </div>
            </section>
        </a>
        
        <a href="MaterialFaltante.jsp">
            <section class="servicio">
                <img src="IMAGENES/document-3271743_960_720.jpg" alt="">
                <div class="contenedor">
                    <h2>Material Requerido</h2>
                </div>
            </section>
        </a>
        <a href="Especialistas.jsp">
            <section class="servicio">
                <img src="IMAGENES/aid-1822458_960_720.jpg" alt="">
                <div class="contenedor">
                    <h2>Especialistas</h2>
                </div>
            </section>
        </a>
                        

        <footer>
            <p>WU- With U <br> WU What U need</p>
            &COPY; 2018
        </footer>
    </body>
</html>