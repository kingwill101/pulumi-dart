// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionHandlerScript {
  /// Path to the script from the application root directory.
  final pulumi.Input<String> scriptPath;

  /// Creates a new [StandardAppVersionHandlerScript].
  /// [scriptPath] Path to the script from the application root directory.
  const StandardAppVersionHandlerScript({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptPath': scriptPath,
    };
  }

  factory StandardAppVersionHandlerScript.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionHandlerScript(
      scriptPath: pulumi.Input.fromValue(map['scriptPath'] as String),
    );
  }
}
