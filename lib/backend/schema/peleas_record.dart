import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeleasRecord extends FirestoreRecord {
  PeleasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "boxeador" field.
  DocumentReference? _boxeador;
  DocumentReference? get boxeador => _boxeador;
  bool hasBoxeador() => _boxeador != null;

  // "rival" field.
  String? _rival;
  String get rival => _rival ?? '';
  bool hasRival() => _rival != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "resultado" field.
  String? _resultado;
  String get resultado => _resultado ?? '';
  bool hasResultado() => _resultado != null;

  // "metodo" field.
  String? _metodo;
  String get metodo => _metodo ?? '';
  bool hasMetodo() => _metodo != null;

  // "roundFinal" field.
  int? _roundFinal;
  int get roundFinal => _roundFinal ?? 0;
  bool hasRoundFinal() => _roundFinal != null;

  // "roundsTotales" field.
  int? _roundsTotales;
  int get roundsTotales => _roundsTotales ?? 0;
  bool hasRoundsTotales() => _roundsTotales != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "lugarRival" field.
  String? _lugarRival;
  String get lugarRival => _lugarRival ?? '';
  bool hasLugarRival() => _lugarRival != null;

  // "lugarPelea" field.
  String? _lugarPelea;
  String get lugarPelea => _lugarPelea ?? '';
  bool hasLugarPelea() => _lugarPelea != null;

  void _initializeFields() {
    _boxeador = snapshotData['boxeador'] as DocumentReference?;
    _rival = snapshotData['rival'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _resultado = snapshotData['resultado'] as String?;
    _metodo = snapshotData['metodo'] as String?;
    _roundFinal = castToType<int>(snapshotData['roundFinal']);
    _roundsTotales = castToType<int>(snapshotData['roundsTotales']);
    _observaciones = snapshotData['observaciones'] as String?;
    _lugarRival = snapshotData['lugarRival'] as String?;
    _lugarPelea = snapshotData['lugarPelea'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('peleas');

  static Stream<PeleasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PeleasRecord.fromSnapshot(s));

  static Future<PeleasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PeleasRecord.fromSnapshot(s));

  static PeleasRecord fromSnapshot(DocumentSnapshot snapshot) => PeleasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PeleasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PeleasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PeleasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PeleasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPeleasRecordData({
  DocumentReference? boxeador,
  String? rival,
  DateTime? fecha,
  String? resultado,
  String? metodo,
  int? roundFinal,
  int? roundsTotales,
  String? observaciones,
  String? lugarRival,
  String? lugarPelea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'boxeador': boxeador,
      'rival': rival,
      'fecha': fecha,
      'resultado': resultado,
      'metodo': metodo,
      'roundFinal': roundFinal,
      'roundsTotales': roundsTotales,
      'observaciones': observaciones,
      'lugarRival': lugarRival,
      'lugarPelea': lugarPelea,
    }.withoutNulls,
  );

  return firestoreData;
}

class PeleasRecordDocumentEquality implements Equality<PeleasRecord> {
  const PeleasRecordDocumentEquality();

  @override
  bool equals(PeleasRecord? e1, PeleasRecord? e2) {
    return e1?.boxeador == e2?.boxeador &&
        e1?.rival == e2?.rival &&
        e1?.fecha == e2?.fecha &&
        e1?.resultado == e2?.resultado &&
        e1?.metodo == e2?.metodo &&
        e1?.roundFinal == e2?.roundFinal &&
        e1?.roundsTotales == e2?.roundsTotales &&
        e1?.observaciones == e2?.observaciones &&
        e1?.lugarRival == e2?.lugarRival &&
        e1?.lugarPelea == e2?.lugarPelea;
  }

  @override
  int hash(PeleasRecord? e) => const ListEquality().hash([
        e?.boxeador,
        e?.rival,
        e?.fecha,
        e?.resultado,
        e?.metodo,
        e?.roundFinal,
        e?.roundsTotales,
        e?.observaciones,
        e?.lugarRival,
        e?.lugarPelea
      ]);

  @override
  bool isValidKey(Object? o) => o is PeleasRecord;
}
