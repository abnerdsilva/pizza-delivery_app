import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class MessagesMixin {
  final scaffoldGlobalkey = GlobalKey<ScaffoldState>();

  showError(
          {@required String message,
          BuildContext context,
          GlobalKey<ScaffoldState> key}) =>
      _showSnacbar(
          context: context, message: message, color: Colors.red, key: key);

  showSuccess(
          {@required String message,
          BuildContext context,
          GlobalKey<ScaffoldState> key}) =>
      _showSnacbar(
          context: context,
          message: message,
          color: Theme.of(context).primaryColor,
          key: key);

  void _showSnacbar({
    BuildContext context,
    String message,
    GlobalKey<ScaffoldState> key,
    Color color,
  }) {
    final snackbar =
        SnackBar(backgroundColor: Colors.red, content: Text(message));

    if (key != null) {
      key.currentState.showSnackBar(snackbar);
    } else {
      Scaffold.of(context).showSnackBar(snackbar);
    }
  }
}
