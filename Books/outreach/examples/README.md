# Creating Outreach Projects


## :a: Create your elm project structure 


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

## :b: Test your project by running the elm creator

```
$ elm creator
```

reach http://localhost:8000/src/myProject.elm


## :ab: Distribute

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

reach http://localhost:8000/index.html

