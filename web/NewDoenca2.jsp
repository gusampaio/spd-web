<%@page import="les.dominio.Arquivo"%>
<%@page import="les.dominio.Doenca"%>
<%@page import="les.dominio.Cargo"%>
<%@page import="les.dominio.EntidadeDominio"%>
<%@page import="les.aplicacao.Resultado"%>
<%@page import="les.dominio.Endereco"%>
<%@page import="java.util.List"%>
<%@page import="les.dominio.Funcionario"%>
<!DOCTYPE html>
<html lang="en" class="">
<head>
    <meta charset="utf-8" />
    <title>Html version | Angulr</title>
    <meta name="description" content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <script src="libs/jquery/jquery/dist/jquery.js"></script>
    <script src="libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
    <script src="libs/jquery/chosen/chosen.jquery.min.js"></script>
    <script src="js/ui-load.js"></script>
    <script src="js/ui-jp.config.js"></script>
    <script src="js/ui-jp.js"></script>
    <script src="js/ui-nav.js"></script>
    <script src="js/ui-toggle.js"></script>
    <script src="js/ui-client.js"></script>
    <script src="js/get-id.js"></script>
    <script>
 /*       $(document).ready(function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            $('#a').click(function(){
                $.ajax({
                    type: 'POST',
                    url: 'NewDoenca',
                    data: {teste: teste},
                    url: 'NewDoenca',
                    sucess: function(result) {
                      $('result1').html(result);
                    }
                });
            });
        });*/
    </script>
    <link rel="stylesheet" href="libs/assets/animate.css/animate.css" type="text/css" />
    <link rel="stylesheet" href="libs/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="libs/assets/simple-line-icons/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="libs/jquery/bootstrap/dist/css/bootstrap.css" type="text/css" />


    <link rel="stylesheet" href="css/font.css" type="text/css" />
    <link rel="stylesheet" href="css/app.css" type="text/css" />
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style></head>
<body>
<div class="app app-header-fixed ">
  

    <!-- header -->
  <header id="header" class="app-header navbar" role="menu">
      <!-- navbar header -->
      <div class="navbar-header bg-dark">
        <button class="pull-right visible-xs dk" ui-toggle-class="show" target=".navbar-collapse">
          <i class="glyphicon glyphicon-cog"></i>
        </button>
        <button class="pull-right visible-xs" ui-toggle-class="off-screen" target=".app-aside" ui-scroll="app">
          <i class="glyphicon glyphicon-align-justify"></i>
        </button>
        <!-- brand -->
        <a href="#/" class="navbar-brand text-lt">
          <i class="fa fa-btc"></i>
          <img src="img/logo.png" alt="." class="hide">
          <span class="hidden-folded m-l-xs">Angulr</span>
        </a>
        <!-- / brand -->
      </div>
      <!-- / navbar header -->

      <!-- navbar collapse -->
      <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
        <!-- buttons -->
        <div class="nav navbar-nav hidden-xs">
          <a href="#" class="btn no-shadow navbar-btn" ui-toggle-class="app-aside-folded" target=".app">
            <i class="fa fa-dedent fa-fw text"></i>
            <i class="fa fa-indent fa-fw text-active"></i>
          </a>
          
        </div>
        <!-- / buttons -->


  </header>
  <!-- / header -->


    <!-- aside -->
  <aside id="aside" class="app-aside hidden-xs bg-dark">
      <div class="aside-wrap">
        <div class="navi-wrap">
     
          <!-- nav -->
          <nav ui-nav class="navi clearfix">
            <ul class="nav">
              <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span>Cadastro</span>
              </li>
              <li>
                <a href="Funcionario?OPERACAO=CONSULTAR" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-user-follow"></i>
                  <input type="hidden" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <span>Funcionario</span>
                </a>
              </li>
              <li>
                <a href="/CRUD-web/IndexGrupo.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="fa fa-group"></i>
                  <span>Grupo</span>
                </a>
              </li>
              <li>
                <a href="/CRUD-web/IndexPropriedade.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-map"></i>
                  <span>Propriedade </span>
                </a>
              </li>
                <li>
                    <a href="/CRUD-web/IndexTalhao.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                      <i class="icon-pointer"></i>
                      <span>Talhao </span>
                    </a>
                </li>
                <li>
                    <a href="/CRUD-web/IndexCultura.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                      <i class="icon-basket-loaded"></i>
                      <span>Cultura </span>
                    </a>
                </li> 
                <li>
                    <a href="/CRUD-web/IndexDoenca.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                      <i class="icon-plus"></i>
                      <span>Doen�a</span>
                    </a>
                </li> 


              <li>
                <a href="/CRUD-web/IndexCargo.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-wrench"></i>
                  <span>Cargo </span>
                </a>
              </li>
              
              <li>
                <a href="/CRUD-web/IndexDispositivo.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-rocket"></i>
                  <span>Dispositivo</span>
                </a>
              </li>
              <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span>Opra��es</span>
              </li>
              <li>
                <a href="/CRUD-web/IndexDiario.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-notebook"></i>
                  <span>Di�rio</span>
                </a>
              </li>
              
              <li>
                <a href="/CRUD-web/IndexDiario.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-bar-chart"></i>
                  <span>Relat�rios</span>
                </a>
              </li>
              <li>
                <a href="/CRUD-web/IndexMsg.jsp" id="OPERACAO" name="OPERACAO" value="CONSULTAR">
                  <i class="icon-envelope-open"></i>
                  <span>Mesagens</span>
                </a>
              </li>              
        </div>
      </div>
  </aside>
  <!-- / aside -->


  <!-- content -->
  <div id="content" class="app-content" role="main">
    <div class="app-content-body ">
        <%
            Resultado result = (Resultado)request.getAttribute("SelectArquivo");
            List<EntidadeDominio> arquivos  = (List<EntidadeDominio>) result.getEntidades();    
            Arquivo arquivo = (Arquivo)arquivos.get(0);
            List<String> atributos = arquivo.getAtributos_weka();
        %>
        <div class="row">
            <div  class="col-sm-2">
            </div>
            <div class="col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-heading font-bold">Doen�a</div>
                    <div class="panel-body">
                     <form method="POST" action="NewDoenca" id="uploadFile" enctype="multipart/form-data"></form>
                        <form role="form">
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-8">
                                        <label>Descricao</label>
                                        <input  type="text" id="txtNome" name="txtNome" class="form-control" placeholder="Nome"  disabled>
                                    </div>
                                    <div class="col-sm-4">
                                        Selecione o caminho do arquivo:
                                        
                                        <input type="hidden" name="doencaID" form="uploadFile"/>
                                        <input id="uploadFile" type="file" name="file" form="uploadFile" />
                                        <button form="uploadFile" type="submit" id="b" name="OPERACAO" value="CONSULTAR">Enviar</button>
                                        <span id="result1"></span>
                                       
                                    </div>
                                </div>
                            </div>    
                            <br>
                            <div class="row">
                                <div class="form-group">
                                    
                                    <% if(arquivo.getAtributos_weka().size() > 0) {
                                        for(int i = 0; i < arquivo.getAtributos_weka().size(); i++){
                                            
                                            out.println("<div class=\"row\">");
                                            out.println("<div class=\"col-sm-6\">");

                                            out.println("<label>Pergunta</label>");
                                            out.println("<input  type=\"text\" id=\"txt_Pergunta\" name=\"txt_Pergunta\" class=\"form-control\">");
                                            out.println("</div>");
                                            out.println("<div class=\"col-sm-2\">");
                                            out.println("<label>Atributo relacionado</label>");
                                            out.println("<input  type=\"text\" id=\"txt_atributo\" name=\"txt_atributo\" value=\""+atributos.get(i)+"\" class=\"form-control\" disabled>");
                                            out.println("</div>");
                                            out.println("<div class=\"col-sm-2\">");
                                            out.println("<label>Tipo</label>");
                                            out.println("<br>");
                                            out.println("<select name=\"txt_tipo\" disabled>");
                                            out.println("<option value=\"Texto\">Texto</option>");
                                            out.println("<option value=\"Boolean\">Boolean</option>");
                                            out.println("</select>");
                                            
                                            out.println("</div>");
                                            out.println("<br><a href=\"#\" class=\"delete\">Delete</a>");
                                            out.println("</div>");

                                        }
                                    }
                                    %>                                
                                </div>
                            </div>
                            <div class="container1">
                            </div>                         
                            <br>
                            <button type="submit" class="btn btn-sm btn-primary" id="OPERACAO" name="OPERACAO" value="SALVAR">Salvar</button>
                            <button type="button" class="btn btn-sm btn-primary" onclick="window.location.href='IndexDoenca.jsp'">Voltar</button>
                        </form>                       
                    </div>
                </div>
            </div>
            <div  class="col-sm-1">
            </div>

        </div>

        
        




  <!-- /content -->
  
  <!-- footer -->
  <footer id="footer" class="app-footer" role="footer">
    <div class="wrapper b-t bg-light">
      <span class="pull-right">2.2.0 <a href ui-scroll="app" class="m-l-sm text-muted"><i class="fa fa-long-arrow-up"></i></a></span>
      &copy; 2016 Copyright.
    </div>
  </footer>
  <!-- / footer -->



</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</body>
</html>
