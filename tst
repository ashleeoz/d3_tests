<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>D3 Test</title>
        <script type="text/javascript" src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
    </head>
	<style type="text/css">
		
			div.bar {
				display: inline-block;
				width: 20px;
				height: 75px;
				margin-right:2px;
				background-color: teal;
			}
		
	</style>
    <body>

        <script type="text/javascript">
		
			//width and height variables
			var w = 500;
			var h = 100;
			var barPad = 1 
			

			var dataset = [];  //Initialize empty array
			dataset = [5, 10, 13, 19, 21, 25, 22, 18, 15, 13,
							11, 12, 15, 20, 18, 17, 16, 18, 23, 25 ];
			
			//Create SVG element
			var svg = d3.select("body")
						.append("svg")
						.attr("width", w)
						.attr("height", h);
			
            svg.selectAll("rect")
				.data(dataset)
				.enter()
				.append("rect")
				.attr("x",function(d,i)
						{return i*(w/dataset.length);}
					)
				.attr("y",function(d)
						{return h-(d*4);})
				.attr("width",w/dataset.length - barPad)
				.attr("height",function(d) 
							{return d * 4;}				
					)

				.attr("fill", function(d) {
						return "rgb(0, 0," + (d * 10) + ")";
					});
				
				svg.selectAll("text")
					.data(dataset)
					.enter()
					.append("text")
					.text(function (d) 
							{return d;}
						)
					.attr("text-anchor", "middle")
				    .attr("x", function(d, i) {
						return i * (w / dataset.length) + (w / dataset.length - barPad) / 2;
						})
				    .attr("y", function(d) {
						return h - (d * 4) + 14;
						})
					.attr("font-family", "sans-serif")
				    .attr("font-size", "11px")
				    .attr("fill", "white");
				;
			
        </script>
    </body>
</html>
