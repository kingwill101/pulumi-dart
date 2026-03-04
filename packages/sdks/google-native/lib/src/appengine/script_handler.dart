// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandler {
  /// Path to the script from the application root directory.
  final pulumi.Input<String>? scriptPath;

  /// Creates a new [ScriptHandler].
  /// [scriptPath] Path to the script from the application root directory.
  ScriptHandler({this.scriptPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scriptPath': ?scriptPath};
  }

  factory ScriptHandler.fromMap(Map<String, dynamic> map) {
    return ScriptHandler(
      scriptPath: (() {
        final guardedValue = map['scriptPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
