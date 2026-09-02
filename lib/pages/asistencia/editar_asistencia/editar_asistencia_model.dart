import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'editar_asistencia_widget.dart' show EditarAsistenciaWidget;
import 'package:flutter/material.dart';

class EditarAsistenciaModel extends FlutterFlowModel<EditarAsistenciaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<BoxeadoresRecord, bool> checkboxValueMap = {};
  List<BoxeadoresRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
