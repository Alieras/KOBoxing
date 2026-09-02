import '/flutter_flow/flutter_flow_util.dart';
import '/pages/estadisticas/stat_box/stat_box_widget.dart';
import '/index.dart';
import 'estadistica_rendimiento_widget.dart' show EstadisticaRendimientoWidget;
import 'package:flutter/material.dart';

class EstadisticaRendimientoModel
    extends FlutterFlowModel<EstadisticaRendimientoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatBox.
  late StatBoxModel statBoxModel1;
  // Model for StatBox.
  late StatBoxModel statBoxModel2;
  // Model for StatBox.
  late StatBoxModel statBoxModel3;
  // Model for StatBox.
  late StatBoxModel statBoxModel4;

  @override
  void initState(BuildContext context) {
    statBoxModel1 = createModel(context, () => StatBoxModel());
    statBoxModel2 = createModel(context, () => StatBoxModel());
    statBoxModel3 = createModel(context, () => StatBoxModel());
    statBoxModel4 = createModel(context, () => StatBoxModel());
  }

  @override
  void dispose() {
    statBoxModel1.dispose();
    statBoxModel2.dispose();
    statBoxModel3.dispose();
    statBoxModel4.dispose();
  }
}
