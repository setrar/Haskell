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


## :b: Modify the elm project 

- [ ] Pick an example project on http://www.cas.mcmaster.ca/~anand/examples/

- [ ] Test the project using  https://ellie-app.com/

  In general, you would need to :

  * replace the `Main` module to `MyProject` module

 
```elm
  module MyProject exposing (main)
```

  * replace the `view` function to `myShapes` function in `main` function

```elm
  main =
    gameApp
        Tick
        { 
            model = init
        ,   view = myShapes
        ,   update = update
        ,   title = "Ellie Example" -- This is the title of the browser window / tab
        }
```

## :ab: Distribute


- [ ] Test your project by running the elm creator

```
$ elm creator
```

reach http://localhost:8000/src/myProject.elm


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

