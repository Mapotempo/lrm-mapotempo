Use Mapotempo router with [Leaflet Routing Machine](https://github.com/perliedman/leaflet-routing-machine)

## Get started with lrm-mapotempo

Insert a reference to the JavaScript file into your page right after the line where it loads Leaflet Routing Machine:

```html
[...]
<script src="leaflet-routing-machine.js"></script>
<script src="lrm-mapotempo.js"></script>
[...]
```

Also, include the stylesheet.

```html
<link rel="stylesheet" href="lrm-mapotempo.css">
```

Insert your apiKey and serviceUrl for [Mapotempo router](https://github.com/Mapotempo/router-wrapper).

```js
var map = L.map('map');

L.Routing.control({
  router: L.Routing.mt({serviceUrl: ..., apiKey: ...})
}).addTo(map);
```

## Use lrm-mapotempo with npm and Browserify

The Mapotempo plug-in can be installed using npm instead of downloading the script manually:

```sh
npm install --save lrm-mapotempo
```

Once the Mapotempo plug-in is installed, update the router instance to tell the Leaflet Routing Machine to use Mapotempo’s engine.

```js
var L = require('leaflet');
require('leaflet-routing-machine');
require('lrm-mapotempo');

var map = L.map('map');

L.Routing.control({
  router: L.Routing.mt({serviceUrl: ..., apiKey: ...})
}).addTo(map);
```

## Update plug-in

If you need to update code in src/ directory, just run following command line:

```sh
bash scripts/dist.sh
```

to get all new files in dist/ directory.
