<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<r:script>
			var treeData = { "name":"${membershipInstance.leader.name}", 
				"children":[
                    	<g:if test="${membershipInstance.members}">
							<g:each in="${membershipInstance?.members}" status="i" var="memberInstance">
								{"name":"${memberInstance.name}"},
							</g:each>
						</g:if>
				]
			};
			var treeSVG = d3.select("#membership-tree")
				.append("svg")
				.attr("width", 960)
				.attr("height", 1000)
				.append("svg:g")
				.attr("transform", "translate(80, 100)");

			var tree = d3.layout.tree()
				.size([400,700]);
			var diagonal = d3.svg.diagonal()
				.projection(function(d) { return [d.y, d.x]; });
			var nodes = tree.nodes(treeData);
			var links = tree.links(nodes);
			var link = treeSVG.selectAll("pathlink")
				.data(links)
				.enter().append("svg:path")
				.attr("class", "link")
				.attr("d", diagonal)
			var node = treeSVG.selectAll("g.node")
				.data(nodes)
				.enter().append("svg:g")
				.attr("transform", function(d) { return "translate(" + d.y + "," + d.x + ")"; })
			node.append("svg:circle")
				.attr("r", function(d) { return d.name.length * 4; })
				.style("fill","grey");
			node.append("text")
				.attr("text-anchor", "middle")
				.attr("dy", ".3em")
				.style("color","white")
				.text(function(d) { return d.name; });

			function click(d) {
				alert("clicked");
				update();
			}
		</r:script>
	</head>
	<body>
		<div class="container-fluid">
			<g:if test="${membershipInstance?.id}">
				<div id="membership-tree"></div>
			</g:if>
		</div>
	</body>
</html>
