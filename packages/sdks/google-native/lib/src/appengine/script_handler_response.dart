// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandlerResponse {
  /// Path to the script from the application root directory.
  final pulumi.Input<String> scriptPath;

  /// Creates a new [ScriptHandlerResponse].
  /// [scriptPath] Path to the script from the application root directory.
  ScriptHandlerResponse({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptPath': scriptPath,
    };
  }

  factory ScriptHandlerResponse.fromMap(Map<String, dynamic> map) {
    return ScriptHandlerResponse(
      scriptPath: pulumi.Input.fromValue(map['scriptPath'] as String),
    );
  }
}

