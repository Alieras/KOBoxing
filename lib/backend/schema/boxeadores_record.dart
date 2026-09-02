import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BoxeadoresRecord extends FirestoreRecord {
  BoxeadoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "fechaNacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "contactoEmergencia" field.
  String? _contactoEmergencia;
  String get contactoEmergencia => _contactoEmergencia ?? '';
  bool hasContactoEmergencia() => _contactoEmergencia != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "fechaRegistro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "telefonoEmergencia" field.
  String? _telefonoEmergencia;
  String get telefonoEmergencia => _telefonoEmergencia ?? '';
  bool hasTelefonoEmergencia() => _telefonoEmergencia != null;

  // "altura" field.
  String? _altura;
  String get altura => _altura ?? '';
  bool hasAltura() => _altura != null;

  // "apodo" field.
  String? _apodo;
  String get apodo => _apodo ?? '';
  bool hasApodo() => _apodo != null;

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _fechaNacimiento = snapshotData['fechaNacimiento'] as DateTime?;
    _peso = castToType<double>(snapshotData['peso']);
    _categoria = snapshotData['categoria'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _contactoEmergencia = snapshotData['contactoEmergencia'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _activo = snapshotData['activo'] as bool?;
    _fechaRegistro = snapshotData['fechaRegistro'] as DateTime?;
    _sexo = snapshotData['sexo'] as String?;
    _telefonoEmergencia = snapshotData['telefonoEmergencia'] as String?;
    _altura = snapshotData['altura'] as String?;
    _apodo = snapshotData['apodo'] as String?;
    _cedula = snapshotData['cedula'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('boxeadores');

  static Stream<BoxeadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BoxeadoresRecord.fromSnapshot(s));

  static Future<BoxeadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BoxeadoresRecord.fromSnapshot(s));

  static BoxeadoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BoxeadoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BoxeadoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BoxeadoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BoxeadoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BoxeadoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBoxeadoresRecordData({
  String? nombre,
  String? apellido,
  DateTime? fechaNacimiento,
  double? peso,
  String? categoria,
  String? telefono,
  String? contactoEmergencia,
  String? direccion,
  bool? activo,
  DateTime? fechaRegistro,
  String? sexo,
  String? telefonoEmergencia,
  String? altura,
  String? apodo,
  String? cedula,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellido': apellido,
      'fechaNacimiento': fechaNacimiento,
      'peso': peso,
      'categoria': categoria,
      'telefono': telefono,
      'contactoEmergencia': contactoEmergencia,
      'direccion': direccion,
      'activo': activo,
      'fechaRegistro': fechaRegistro,
      'sexo': sexo,
      'telefonoEmergencia': telefonoEmergencia,
      'altura': altura,
      'apodo': apodo,
      'cedula': cedula,
    }.withoutNulls,
  );

  return firestoreData;
}

class BoxeadoresRecordDocumentEquality implements Equality<BoxeadoresRecord> {
  const BoxeadoresRecordDocumentEquality();

  @override
  bool equals(BoxeadoresRecord? e1, BoxeadoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.peso == e2?.peso &&
        e1?.categoria == e2?.categoria &&
        e1?.telefono == e2?.telefono &&
        e1?.contactoEmergencia == e2?.contactoEmergencia &&
        e1?.direccion == e2?.direccion &&
        e1?.activo == e2?.activo &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.sexo == e2?.sexo &&
        e1?.telefonoEmergencia == e2?.telefonoEmergencia &&
        e1?.altura == e2?.altura &&
        e1?.apodo == e2?.apodo &&
        e1?.cedula == e2?.cedula;
  }

  @override
  int hash(BoxeadoresRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.fechaNacimiento,
        e?.peso,
        e?.categoria,
        e?.telefono,
        e?.contactoEmergencia,
        e?.direccion,
        e?.activo,
        e?.fechaRegistro,
        e?.sexo,
        e?.telefonoEmergencia,
        e?.altura,
        e?.apodo,
        e?.cedula
      ]);

  @override
  bool isValidKey(Object? o) => o is BoxeadoresRecord;
}
