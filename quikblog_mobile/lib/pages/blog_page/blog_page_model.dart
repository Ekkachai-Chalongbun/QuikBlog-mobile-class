import '/flutter_flow/flutter_flow_util.dart';
import 'blog_page_widget.dart' show BlogPageWidget;
import 'package:flutter/material.dart';

class BlogPageModel extends FlutterFlowModel<BlogPageWidget> {
  ///  Local state fields for this page.

  bool? create = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
