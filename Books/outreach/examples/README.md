# Creating Outreach Projects


```
$ mkdir myProject
```

```
$ cd myProject
```

```
$ elm init
```


```
$ elm install MacCASOutreach/graphicsvg
```


## Distribute

- [ ] Transpile the Javascript App

```
$ elm make src/TwoShips.elm --output app.js
```

- [ ] Allow the browser to launch the app by creating an HTML index page


```html
<html>
<head>
  <style>
    /* you can style your program here */
  </style>
</head>
<body>
  <main></main>
  <script src="app.js"><script>
  <script>
    Elm.myProject.init({ node: document.querySelector('main') })
    // you can use ports and stuff here
  </script>
</body>
</html>
```
