class Notificaciones {
  String nombre;
  String tipoNotificacion;
  String fecha;
  String url;

  Notificaciones(
      String _nombre, String _tipoNotificacion, String _fecha, String _url) {
    this.nombre = _nombre;
    this.tipoNotificacion = _tipoNotificacion;
    this.fecha = _fecha;
    this.url = _url;
  }
}

List<Notificaciones> notificaciones = [
  new Notificaciones(
      'Jairo Diaz',
      'Reacciono a un video',
      'lun. a las 12:30 AM',
      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
  new Notificaciones(
      'Jose Castro',
      'Reacciono a un video',
      'mar. a las 2:30 PM',
      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
  new Notificaciones(
      'Stiven Bustamante',
      'Reacciono a un video',
      'mie. a las 3:30 PM',
      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
  new Notificaciones(
      'Andres Castillo',
      'Reacciono a una foto',
      'jue. a las 4:30 PM',
      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
  new Notificaciones(
      'Benito Camelo',
      'Respondio tu comentario',
      'vie. a las 5:30 PM',
      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
  new Notificaciones(
      'Orlando Montes',
      'Compartio tu piblicacion',
      'sab. a las 6:40 PM',
      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
];
