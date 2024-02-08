import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityController1;
  String? Function(BuildContext, String?)? cityController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityController2;
  String? Function(BuildContext, String?)? cityController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityController3;
  late bool cityVisibility1;
  String? Function(BuildContext, String?)? cityController3Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode4;
  TextEditingController? cityController4;
  late bool cityVisibility2;
  String? Function(BuildContext, String?)? cityController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cityVisibility1 = false;
    cityVisibility2 = false;
  }

  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    cityFocusNode1?.dispose();
    cityController1?.dispose();

    cityFocusNode2?.dispose();
    cityController2?.dispose();

    cityFocusNode3?.dispose();
    cityController3?.dispose();

    cityFocusNode4?.dispose();
    cityController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
