// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolPythonFunction {
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// The Python code to execute for the tool.
  final pulumi.Input<String>? pythonCode;

  /// Creates a new [AppVersionSnapshotToolPythonFunction].
  /// [description] The description of the app version.
  /// [name] (Output)
  /// [pythonCode] (Output)
  const AppVersionSnapshotToolPythonFunction({
    this.description,
    this.name,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'pythonCode': ?pythonCode,
    };
  }

  factory AppVersionSnapshotToolPythonFunction.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolPythonFunction(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonCode: (() { final guardedValue = map['pythonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
