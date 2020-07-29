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
    var app = Elm.myProject.init({ node: document.querySelector('main') })
    // you can use ports and stuff here
  </script>
</body>
</html>
```
