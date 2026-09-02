import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsistenciaRecord extends FirestoreRecord {
  AsistenciaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "entrenador" field.
  DocumentReference? _entrenador;
  DocumentReference? get entrenador => _entrenador;
  bool hasEntrenador() => _entrenador != null;

  // "asistentes" field.
  List<DocumentReference>? _asistentes;
  List<DocumentReference> get asistentes => _asistentes ?? const [];
  bool hasAsistentes() => _asistentes != null;

  // "fechaTexto" field.
  String? _fechaTexto;
  String get fechaTexto => _fechaTexto ?? '';
  bool hasFechaTexto() => _fechaTexto != null;

  void _initializeFields() {
    _fecha = snapshotData['fecha'] as DateTime?;
    _entrenador = snapshotData['entrenador'] as DocumentReference?;
    _asistentes = getDataList(snapshotData['asistentes']);
    _fechaTexto = snapshotData['fechaTexto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asistencia');

  static Stream<AsistenciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsistenciaRecord.fromSnapshot(s));

  static Future<AsistenciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsistenciaRecord.fromSnapshot(s));

  static AsistenciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsistenciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsistenciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsistenciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsistenciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsistenciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsistenciaRecordData({
  DateTime? fecha,
  DocumentReference? entrenador,
  String? fechaTexto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha': fecha,
      'entrenador': entrenador,
      'fechaTexto': fechaTexto,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsistenciaRecordDocumentEquality implements Equality<AsistenciaRecord> {
  const AsistenciaRecordDocumentEquality();

  @override
  bool equals(AsistenciaRecord? e1, AsistenciaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.fecha == e2?.fecha &&
        e1?.entrenador == e2?.entrenador &&
        listEquality.equals(e1?.asistentes, e2?.asistentes) &&
        e1?.fechaTexto == e2?.fechaTexto;
  }

  @override
  int hash(AsistenciaRecord? e) => const ListEquality()
      .hash([e?.fecha, e?.entrenador, e?.asistentes, e?.fechaTexto]);

  @override
  bool isValidKey(Object? o) => o is AsistenciaRecord;
}
