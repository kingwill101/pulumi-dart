// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionHandlerScript {
  /// Path to the script from the application root directory.
  final pulumi.Input<String> scriptPath;

  /// Creates a new [FlexibleAppVersionHandlerScript].
  /// [scriptPath] Path to the script from the application root directory.
  const FlexibleAppVersionHandlerScript({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptPath': scriptPath,
    };
  }

  factory FlexibleAppVersionHandlerScript.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionHandlerScript(
      scriptPath: pulumi.Input.fromValue(map['scriptPath'] as String),
    );
  }
}

