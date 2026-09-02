import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PesosInicialesRecord extends FirestoreRecord {
  PesosInicialesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  void _initializeFields() {
    _peso = castToType<double>(snapshotData['peso']);
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pesosIniciales');

  static Stream<PesosInicialesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PesosInicialesRecord.fromSnapshot(s));

  static Future<PesosInicialesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PesosInicialesRecord.fromSnapshot(s));

  static PesosInicialesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PesosInicialesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PesosInicialesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PesosInicialesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PesosInicialesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PesosInicialesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPesosInicialesRecordData({
  double? peso,
  String? nombre,
  String? apellido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'peso': peso,
      'nombre': nombre,
      'apellido': apellido,
    }.withoutNulls,
  );

  return firestoreData;
}

class PesosInicialesRecordDocumentEquality
    implements Equality<PesosInicialesRecord> {
  const PesosInicialesRecordDocumentEquality();

  @override
  bool equals(PesosInicialesRecord? e1, PesosInicialesRecord? e2) {
    return e1?.peso == e2?.peso &&
        e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido;
  }

  @override
  int hash(PesosInicialesRecord? e) =>
      const ListEquality().hash([e?.peso, e?.nombre, e?.apellido]);

  @override
  bool isValidKey(Object? o) => o is PesosInicialesRecord;
}
