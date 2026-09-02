import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _varRol = '';
  String get varRol => _varRol;
  set varRol(String value) {
    _varRol = value;
  }

  bool _mostrarEditar = false;
  bool get mostrarEditar => _mostrarEditar;
  set mostrarEditar(bool value) {
    _mostrarEditar = value;
  }

  bool _tokenValidado = false;
  bool get tokenValidado => _tokenValidado;
  set tokenValidado(bool value) {
    _tokenValidado = value;
  }

  String _invitationCode = '';
  String get invitationCode => _invitationCode;
  set invitationCode(String value) {
    _invitationCode = value;
  }
}
