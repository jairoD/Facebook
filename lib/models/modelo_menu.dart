class MenuOpciones {
  String nombre;
  String icono;

  MenuOpciones(String _nombre, String _icono){
    this.nombre = _nombre;
    this.icono = icono;    
  }
}

List<MenuOpciones> menu = [
  new MenuOpciones('Amigos', 'group'),
  new MenuOpciones('Grupos', 'group'),
  new MenuOpciones('Marketplace', 'store'),
  new MenuOpciones('Eventos', 'event_note'),
];