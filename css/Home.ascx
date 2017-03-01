<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Panter.Skins.TronexSkin.Home" %>

<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1, user-scalable=no" />

<dnn:DnnCssInclude ID="DnnCssInclude2" runat="server" FilePath="~/Estilos/css/bootstrap-combined.min.css" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="~/Estilos/js/scripts.js" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="~/Estilos/css/variables.css" />
<dnn:DnnCssInclude ID="bootStrapCSS1" runat="server" FilePath="~/Estilos/css/estilos.css" />
<dnn:DnnCssInclude ID="DnnCssInclude11" runat="server" FilePath="~/Estilos/css/variables.css" />
<dnn:DnnCssInclude ID="DnnCssInclude3" runat="server" FilePath="~/Estilos/css/component.css" />
<dnn:JQUERY ID="JQUERY1" runat="server" jQueryHoverIntent="true" />
<dnn:DnnJsInclude ID="DnnJsInclude4" runat="server" FilePath="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js" />

<dnn:DnnJsInclude ID="DnnJsInclude3" runat="server" FilePath="~/Estilos/js/modernizr.custom.js" />
<dnn:DnnJsInclude ID="DnnJsInclude2" runat="server" FilePath="~/Estilos/js/jquery.dlmenu.js" />


<script>
    window.onload = width_textImg;

   $(document).ready(function() {
        var slider = document.getElementById('SliderContent');
        var topCont = document.getElementById('TopContent');
        if (slider.offsetHeight == 0) {
            topCont.style.marginTop = '150px';
        }
    });

	$(function () {
        $('#dl-menu').dlmenu();
    });
</script>

<div class="cont-general">

    <header class="header">
        <dnn:LOGO runat="Server"></dnn:LOGO>

		<div id="dl-menu" class="dl-menuwrapper">
			<button class="c-hamburger c-hamburger--htx dl-trigger" onclick="mostrarMenu(); return false;">
        <span>toggle menu</span>
      </button>
			<dnn:MENU MenuStyle="bootstrapNavVertical" runat="server"></dnn:MENU>
		</div>
        <nav class="menu-pri">
            <div class="idiomas">
                <dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True"  />
            </div>
			<dnn:MENU MenuStyle="BootStrapNav" runat="server"></dnn:MENU>

            <ul class="buscador-menu">
                <li>
			        <dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" class="buscador-boton" Submit="<img style='width: initial;' src='../../../../estilos/img/icono-buscar.png' border='0' onclick='showSearch()'>" />
			    </li>
			</ul>
        </nav>
    </header>

    <div>
        <div id="SliderContent" >
            <div id="SliderPane" runat="server" class="col-md-12" />
        </div>
        <div id="TopContent" >
            <div id="TopPane" runat="server" class="col-md-12" />
        </div>
        <div id="Content" >
            <div id="ContentPane" runat="server" class="col-md-9" />
            <div id="RightPane" runat="server" class="col-md-3" />
        </div>
        <div id="MidContent" >
            <div id="ThirdRowLeft" runat="server" class="col-md-4" />
            <div id="ThirdRowMiddle" runat="server" class="col-md-4" />
            <div id="ThirdRowRight" runat="server" class="col-md-4" />
        </div>
        <div id="ContentLeftCol" >
            <div id="LeftPane" runat="server" class="col-md-3" />
            <div id="ContentPaneRight" runat="server" class="col-md-9" />
        </div>
        <div id="BottomContent" >
            <div id="BottomPane" runat="server" class="col-md-12" />
        </div>
    </div>
</div>

<div id="FooterRow" >
    <div id="FooterRowLeft" runat="server" class="col-md-4" />
    <div id="FooterRowMiddle" runat="server" class="col-md-4" />
    <div id="FooterRowRight" runat="server" class="col-md-4" />
    <div id="FooterPane" runat="server" class="col-md-12" />
</div>
