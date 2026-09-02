import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntrenamientosRecord extends FirestoreRecord {
  EntrenamientosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "duracion" field.
  String? _duracion;
  String get duracion => _duracion ?? '';
  bool hasDuracion() => _duracion != null;

  // "entrenador" field.
  DocumentReference? _entrenador;
  DocumentReference? get entrenador => _entrenador;
  bool hasEntrenador() => _entrenador != null;

  // "fechaString" field.
  String? _fechaString;
  String get fechaString => _fechaString ?? '';
  bool hasFechaString() => _fechaString != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _lugar = snapshotData['lugar'] as String?;
    _duracion = snapshotData['duracion'] as String?;
    _entrenador = snapshotData['entrenador'] as DocumentReference?;
    _fechaString = snapshotData['fechaString'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entrenamientos');

  static Stream<EntrenamientosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EntrenamientosRecord.fromSnapshot(s));

  static Future<EntrenamientosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EntrenamientosRecord.fromSnapshot(s));

  static EntrenamientosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EntrenamientosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EntrenamientosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EntrenamientosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EntrenamientosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EntrenamientosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEntrenamientosRecordData({
  String? titulo,
  String? descripcion,
  DateTime? fecha,
  String? lugar,
  String? duracion,
  DocumentReference? entrenador,
  String? fechaString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'fecha': fecha,
      'lugar': lugar,
      'duracion': duracion,
      'entrenador': entrenador,
      'fechaString': fechaString,
    }.withoutNulls,
  );

  return firestoreData;
}

class EntrenamientosRecordDocumentEquality
    implements Equality<EntrenamientosRecord> {
  const EntrenamientosRecordDocumentEquality();

  @override
  bool equals(EntrenamientosRecord? e1, EntrenamientosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha &&
        e1?.lugar == e2?.lugar &&
        e1?.duracion == e2?.duracion &&
        e1?.entrenador == e2?.entrenador &&
        e1?.fechaString == e2?.fechaString;
  }

  @override
  int hash(EntrenamientosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.fecha,
        e?.lugar,
        e?.duracion,
        e?.entrenador,
        e?.fechaString
      ]);

  @override
  bool isValidKey(Object? o) => o is EntrenamientosRecord;
}
