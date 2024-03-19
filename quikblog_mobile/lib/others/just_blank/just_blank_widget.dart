import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'just_blank_model.dart';
export 'just_blank_model.dart';

class JustBlankWidget extends StatefulWidget {
  const JustBlankWidget({super.key});

  @override
  State<JustBlankWidget> createState() => _JustBlankWidgetState();
}

class _JustBlankWidgetState extends State<JustBlankWidget> {
  late JustBlankModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JustBlankModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
      ),
    );
  }
}
