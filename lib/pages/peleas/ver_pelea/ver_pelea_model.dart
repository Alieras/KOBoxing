import '/flutter_flow/flutter_flow_util.dart';
import 'ver_pelea_widget.dart' show VerPeleaWidget;
import 'package:flutter/material.dart';

class VerPeleaModel extends FlutterFlowModel<VerPeleaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
