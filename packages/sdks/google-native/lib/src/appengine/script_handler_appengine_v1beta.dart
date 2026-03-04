// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandlerAppengineV1beta {
  /// Path to the script from the application root directory.
  final pulumi.Input<String>? scriptPath;

  /// Creates a new [ScriptHandlerAppengineV1beta].
  /// [scriptPath] Path to the script from the application root directory.
  ScriptHandlerAppengineV1beta({this.scriptPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scriptPath': ?scriptPath};
  }

  factory ScriptHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ScriptHandlerAppengineV1beta(
      scriptPath: (() {
        final guardedValue = map['scriptPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
