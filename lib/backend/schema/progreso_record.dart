import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgresoRecord extends FirestoreRecord {
  ProgresoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "boxeador" field.
  DocumentReference? _boxeador;
  DocumentReference? get boxeador => _boxeador;
  bool hasBoxeador() => _boxeador != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "fuerza" field.
  double? _fuerza;
  double get fuerza => _fuerza ?? 0.0;
  bool hasFuerza() => _fuerza != null;

  // "resistencia" field.
  double? _resistencia;
  double get resistencia => _resistencia ?? 0.0;
  bool hasResistencia() => _resistencia != null;

  // "velocidad" field.
  double? _velocidad;
  double get velocidad => _velocidad ?? 0.0;
  bool hasVelocidad() => _velocidad != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "entrenador" field.
  DocumentReference? _entrenador;
  DocumentReference? get entrenador => _entrenador;
  bool hasEntrenador() => _entrenador != null;

  void _initializeFields() {
    _boxeador = snapshotData['boxeador'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _peso = castToType<double>(snapshotData['peso']);
    _fuerza = castToType<double>(snapshotData['fuerza']);
    _resistencia = castToType<double>(snapshotData['resistencia']);
    _velocidad = castToType<double>(snapshotData['velocidad']);
    _observaciones = snapshotData['observaciones'] as String?;
    _entrenador = snapshotData['entrenador'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('progreso');

  static Stream<ProgresoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgresoRecord.fromSnapshot(s));

  static Future<ProgresoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgresoRecord.fromSnapshot(s));

  static ProgresoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgresoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgresoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgresoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgresoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgresoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgresoRecordData({
  DocumentReference? boxeador,
  DateTime? fecha,
  double? peso,
  double? fuerza,
  double? resistencia,
  double? velocidad,
  String? observaciones,
  DocumentReference? entrenador,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'boxeador': boxeador,
      'fecha': fecha,
      'peso': peso,
      'fuerza': fuerza,
      'resistencia': resistencia,
      'velocidad': velocidad,
      'observaciones': observaciones,
      'entrenador': entrenador,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgresoRecordDocumentEquality implements Equality<ProgresoRecord> {
  const ProgresoRecordDocumentEquality();

  @override
  bool equals(ProgresoRecord? e1, ProgresoRecord? e2) {
    return e1?.boxeador == e2?.boxeador &&
        e1?.fecha == e2?.fecha &&
        e1?.peso == e2?.peso &&
        e1?.fuerza == e2?.fuerza &&
        e1?.resistencia == e2?.resistencia &&
        e1?.velocidad == e2?.velocidad &&
        e1?.observaciones == e2?.observaciones &&
        e1?.entrenador == e2?.entrenador;
  }

  @override
  int hash(ProgresoRecord? e) => const ListEquality().hash([
        e?.boxeador,
        e?.fecha,
        e?.peso,
        e?.fuerza,
        e?.resistencia,
        e?.velocidad,
        e?.observaciones,
        e?.entrenador
      ]);

  @override
  bool isValidKey(Object? o) => o is ProgresoRecord;
}
