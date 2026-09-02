import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'crear_pelea_widget.dart' show CrearPeleaWidget;
import 'package:flutter/material.dart';

class CrearPeleaModel extends FlutterFlowModel<CrearPeleaWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldR widget.
  FocusNode? textFieldRFocusNode;
  TextEditingController? textFieldRTextController;
  String? Function(BuildContext, String?)? textFieldRTextControllerValidator;
  // State field(s) for TextFieldR2 widget.
  FocusNode? textFieldR2FocusNode1;
  TextEditingController? textFieldR2TextController1;
  String? Function(BuildContext, String?)? textFieldR2TextController1Validator;
  // State field(s) for TextFieldR2 widget.
  FocusNode? textFieldR2FocusNode2;
  TextEditingController? textFieldR2TextController2;
  String? Function(BuildContext, String?)? textFieldR2TextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldRFocusNode?.dispose();
    textFieldRTextController?.dispose();

    textFieldR2FocusNode1?.dispose();
    textFieldR2TextController1?.dispose();

    textFieldR2FocusNode2?.dispose();
    textFieldR2TextController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    textFieldFocusNode5?.dispose();
    textController8?.dispose();
  }
}
