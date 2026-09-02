import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvitationTokensRecord extends FirestoreRecord {
  InvitationTokensRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "usado" field.
  bool? _usado;
  bool get usado => _usado ?? false;
  bool hasUsado() => _usado != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "fechaExpiracion" field.
  DateTime? _fechaExpiracion;
  DateTime? get fechaExpiracion => _fechaExpiracion;
  bool hasFechaExpiracion() => _fechaExpiracion != null;

  void _initializeFields() {
    _codigo = snapshotData['codigo'] as String?;
    _activo = snapshotData['activo'] as bool?;
    _usado = snapshotData['usado'] as bool?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _fechaExpiracion = snapshotData['fechaExpiracion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invitation_tokens');

  static Stream<InvitationTokensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvitationTokensRecord.fromSnapshot(s));

  static Future<InvitationTokensRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InvitationTokensRecord.fromSnapshot(s));

  static InvitationTokensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvitationTokensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvitationTokensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvitationTokensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvitationTokensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvitationTokensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvitationTokensRecordData({
  String? codigo,
  bool? activo,
  bool? usado,
  DateTime? fechaCreacion,
  DateTime? fechaExpiracion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigo': codigo,
      'activo': activo,
      'usado': usado,
      'fechaCreacion': fechaCreacion,
      'fechaExpiracion': fechaExpiracion,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvitationTokensRecordDocumentEquality
    implements Equality<InvitationTokensRecord> {
  const InvitationTokensRecordDocumentEquality();

  @override
  bool equals(InvitationTokensRecord? e1, InvitationTokensRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.activo == e2?.activo &&
        e1?.usado == e2?.usado &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.fechaExpiracion == e2?.fechaExpiracion;
  }

  @override
  int hash(InvitationTokensRecord? e) => const ListEquality().hash(
      [e?.codigo, e?.activo, e?.usado, e?.fechaCreacion, e?.fechaExpiracion]);

  @override
  bool isValidKey(Object? o) => o is InvitationTokensRecord;
}
