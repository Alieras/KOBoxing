import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for emailAddress2 widget.
  FocusNode? emailAddress2FocusNode;
  TextEditingController? emailAddress2TextController;
  String? Function(BuildContext, String?)? emailAddress2TextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for nombreC widget.
  FocusNode? nombreCFocusNode;
  TextEditingController? nombreCTextController;
  String? Function(BuildContext, String?)? nombreCTextControllerValidator;
  // State field(s) for apellidoC widget.
  FocusNode? apellidoCFocusNode;
  TextEditingController? apellidoCTextController;
  String? Function(BuildContext, String?)? apellidoCTextControllerValidator;
  // State field(s) for emailAddressC widget.
  FocusNode? emailAddressCFocusNode;
  TextEditingController? emailAddressCTextController;
  String? Function(BuildContext, String?)? emailAddressCTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for password_CreateConfirm widget.
  FocusNode? passwordCreateConfirmFocusNode;
  TextEditingController? passwordCreateConfirmTextController;
  late bool passwordCreateConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateConfirmTextControllerValidator;
  // State field(s) for token widget.
  FocusNode? tokenFocusNode;
  TextEditingController? tokenTextController;
  String? Function(BuildContext, String?)? tokenTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in ButtonCod widget.
  InvitationTokensRecord? queryCodigo;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordCreateConfirmVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddress2FocusNode?.dispose();
    emailAddress2TextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nombreCFocusNode?.dispose();
    nombreCTextController?.dispose();

    apellidoCFocusNode?.dispose();
    apellidoCTextController?.dispose();

    emailAddressCFocusNode?.dispose();
    emailAddressCTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordCreateConfirmFocusNode?.dispose();
    passwordCreateConfirmTextController?.dispose();

    tokenFocusNode?.dispose();
    tokenTextController?.dispose();
  }
}
