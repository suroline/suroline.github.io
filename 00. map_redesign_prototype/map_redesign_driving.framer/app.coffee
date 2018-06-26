{ mapboxgl } = require "npm"

Utils.insertCSS('@import url(https://api.tiles.mapbox.com/mapbox-gl-js/v0.43.0/mapbox-gl.css)')

mapLayer = new Layer
	height: Screen.height
	width: Screen.width
	
mapLayer.html = "<div id='map'></div>"
mapElement = mapLayer.querySelector("#map")
mapElement.style.height = Screen.height + 'px'

mapboxgl.accessToken = 'pk.eyJ1IjoiY29jb3NpbmNlMTciLCJhIjoiY2pjdTRydDBjMWszYzMybm9mazJmbGFvbCJ9.Xxq-htJolCZsdaKdiIBAGw'

map = new mapboxgl.Map
	container: mapElement
	zoom: 12
	center: [-122.31986, 47.620459]
	# Add Mapbox style url
	style: 'mapbox://styles/mapbox/basic-v9'

mapLayer.ignoreEvents = false
	
#map.setStyle('mapbox://styles/mapbox/satellite-v9');

main.parent = mapLayer

map.on('load', () -> map.loadImage('http://loagames.info/suroline/myplace.png', (error, myimage) -> 
 map.addImage('cat', myimage)
 map.addLayer({"id": "points","type": "symbol","source": {"type": "geojson","data": {"type": "FeatureCollection","features": [{"type": "Feature","geometry": {"type": "Point","coordinates": [-122.31986, 47.620459]}}]}},"layout": {"icon-image": "cat","icon-size": 0.03}})))


 	

drivingpicked.opacity = 0
#drivingpicked.scale = 0.92
drivingpicked.x = 0
drivingpicked.y = 600



flowlayerScroll = new ScrollComponent
	scrollHorizontal: false
	width: Screen.width
	height: 534
	y: 133
###
n = 1

flowlayer.onTouchStart -> flowlayer.onTouchMove ->
	n = n + 1
	print n
flowlayer.onTouchEnd ->
	flowlayer.ignoreEvents = true
	print "End touch"
###
	
flowlayer.parent = flowlayerScroll.content	
flowlayerScroll.parent = mapLayer




transitscrollLayer = new ScrollComponent
	scrollVertical: false
	width: Screen.width
	height: transitpath.height
	y: 635
	

transitscrollLayer.parent = flowlayerScroll.content
transitscroll.parent = transitscrollLayer.content

				
				

scaleTransition = (nav, layerA, layerB, overlay) ->
	transition =
		layerA:
			show:
				opacity: 1
				y : 0
				options:
					time: 3.4
					curve: Bezier
			hide:
				y : 0
				opacity: 0
		layerB:
			show:
				backgroundColor: "rgba(0,0,0,0.8)"
				scale: 1
				y: 0
				options:
					time: 0.4
					curve: Bezier
				opacity: 1	
			hide:
				scale: 1
				y: 500
				opacity: 0
				

tempLayer = new Layer
	backgroundColor: "rgba(0,0,0,0.1)"
	size: Screen.size
	
tempLayer.addChild(mapLayer)
#tempLayer.parent = mapLayer.content

#tempLayer.parent = mapLayer.content
#tempLayer.ignoreEvents = true

flowUp = new FlowComponent
	backgroundColor: "rgba(0,0,0,0)"
flowUp.showNext(tempLayer)




directionbtn.onClick (event, layer) ->
	#tempLayer.parent = flowUp
	mapLayer.parent = flowUp
	flowUp.transition(drivingpicked, scaleTransition)

statusbar_1.parent = null

 
