import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in ChatPage widget.
  OrdersRecord? order;
  // Stores action output result for [Firestore Query - Query a collection] action in ChatPage widget.
  UsersRecord? adminRef;
  // Stores action output result for [Backend Call - Read Document] action in ChatPage widget.
  UsersRecord? usrOfcrRef;
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
