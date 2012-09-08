<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title><g:layoutTitle default="Business Expose Group"/></title>
        
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        
		<r:require modules="bootstrap"/>
        <r:require modules="common"/>
        <g:layoutHead/>
        <r:layoutResources />
    </head>

    <body>
		<g:render template="/layouts/header_admin" />
		
        <g:layoutBody/>
        
        
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

        <r:layoutResources />
		<script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>
		
		<g:render template="/layouts/footer" />
        
    </body>
</html>