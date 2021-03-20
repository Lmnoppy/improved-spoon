# Ti (Time in)
Time app, created while doing the flutter tutorials from:

Net Ninja: ( https://www.youtube.com/channel/UCW5YeuERMmlnqo4oq8vwUpg )
afzalali15:  ( https://github.com/afzalali15/flutter_alarm_clock/ )
Fireship.io:  ( https://fireship.io/lessons/build-a-binary-clock-flutter/ )

## Random code snippets

Official Flutter cook book = https://flutter.dev/docs/cookbook

```
Center(
        child: Image(
          //image: NetworkImage("https://images.unsplash.com/photo-1504387103978-e4ee71416c38?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
          image: AssetImage("assets/images/background/woman.png")
        ),
      ),
```

```
  appBar: AppBar(
        title: Text("TimeIn",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.white
        ),),
        centerTitle: false,
      ),
```