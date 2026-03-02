// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandlerResponseAppengineV1beta {
  /// Path to the script from the application root directory.
  final pulumi.Input<String> scriptPath;

  /// Creates a new [ScriptHandlerResponseAppengineV1beta].
  /// [scriptPath] Path to the script from the application root directory.
  ScriptHandlerResponseAppengineV1beta({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptPath': scriptPath,
    };
  }

  factory ScriptHandlerResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ScriptHandlerResponseAppengineV1beta(
      scriptPath: (map['scriptPath'] as String).input(),
    );
  }
}

