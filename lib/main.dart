import 'package:flutter/material.dart';
import 'package:appbar/models/modelo_notificaciones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navegacion(),
    );
  }
}

class Navegacion extends StatefulWidget {
  @override
  _NavegacionState createState() => _NavegacionState();
}

class _NavegacionState extends State<Navegacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: BarraSuperior(),
      ),
      body: MenuNavegacion(),
    );
  }
}

class Noticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(Icons.web),
    );
  }
}

class AgregarAmigos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(Icons.group),
    );
  }
}

class Tienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(Icons.store),
    );
  }
}

class Notificaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(Icons.notifications),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Icon(Icons.menu),
    );
  }
}

class MenuNavegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 5,
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: new Material(
              color: Colors.white,
              child: new TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  new Tab(icon: new Icon(Icons.web)),
                  new Tab(icon: new Icon(Icons.group)),
                  new Tab(icon: new Icon(Icons.store)),
                  new Tab(icon: new Icon(Icons.notifications)),
                  new Tab(icon: new Icon(Icons.menu)),
                ],
              ),
            ),
          ),
          new Expanded(
            child: new TabBarView(
              children: [
                new VentanaNoticias(),
                new Icon(Icons.group),
                new Icon(Icons.store),
                new VentanaNotificaciones(),
                new VentanaMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BarraSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      suffixIcon: null,
                      hintText: 'Buscar',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        new IconButton(
          icon: Icon(Icons.chat),
          onPressed: () {},
        ),
      ],
    );
  }
}

class BarraAgregar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.person),
        Icon(Icons.image),
      ],
    );
  }
}

class VentanaNotificaciones extends StatefulWidget {
  @override
  _VentanaNotificacionesState createState() => _VentanaNotificacionesState();
}

class _VentanaNotificacionesState extends State<VentanaNotificaciones> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: notificaciones.length,
        itemBuilder: (context, i) {
          return new Column(
            children: <Widget>[
              new ListTile(
                leading: new CircleAvatar(
                  backgroundImage: new NetworkImage(notificaciones[i].url),
                ),
                title: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(notificaciones[i].nombre +
                        " " +
                        notificaciones[i].tipoNotificacion),
                    new Text(
                      notificaciones[i].fecha,
                      style: new TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              new Divider(),
            ],
          );
        });
  }
}

class VentanaMenu extends StatefulWidget {
  @override
  _VentanaMenuState createState() => _VentanaMenuState();
}

class _VentanaMenuState extends State<VentanaMenu> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
              ),
              title: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    'Jairo Diaz',
                    style: new TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    'ver tu perfil',
                    style: new TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: new Divider(
                height: 5,
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.favorite, color: Colors.red),
              title: new Text(
                'Citas',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.group, color: Colors.black),
              title: new Text(
                'Amigos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.store, color: Colors.green),
              title: new Text(
                'MarketPlace',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.event_note, color: Colors.blue),
              title: new Text(
                'Eventos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.timeline, color: Colors.purple),
              title: new Text(
                'Recuerdos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.save, color: Colors.grey),
              title: new Text(
                'Guardado',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.flag, color: Colors.orange),
              title: new Text(
                'Paginas',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.place, color: Colors.pinkAccent),
              title: new Text(
                'Lugares',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.help, color: Colors.blueGrey),
              title: new Text(
                'Ayuda',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.settings, color: Colors.blueGrey),
              title: new Text(
                'Configuraciones',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
            new ListTile(
              leading: new Icon(Icons.lock_open, color: Colors.blueGrey),
              title: new Text(
                'Cerrar cesión',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
      ],
    );
  }
}

class VentanaNoticias extends StatefulWidget {
  @override
  _VentanaNoticiasState createState() => _VentanaNoticiasState();
}

class _VentanaNoticiasState extends State<VentanaNoticias> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Divider(),
        new Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
              ),
              title: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text(
                      'Jairo Diaz',
                      style: new TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  new Icon(Icons.more_horiz),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: new Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: new TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
            ),
            new Divider(
              height: 20,
            ),
            new Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: new Text(
                          'Me gusta',
                          style: new TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Icon(
                        Icons.mode_comment,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: new Text(
                          'Comentar',
                          style: new TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Divider(),
          ],
        ),
        new Divider(),
        new Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
              ),
              title: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text(
                      'Jairo Diaz',
                      style: new TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  new Icon(Icons.more_horiz),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: new Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: new TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
            ),
            new Divider(
              height: 20,
            ),
            new Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Icon(
                        Icons.thumb_up,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: new Text(
                          'Me gusta',
                          style: new TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Icon(
                        Icons.mode_comment,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: new Text(
                          'Comentar',
                          style: new TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Divider(),
          ],
        ),
      ],
    );
  }
}
