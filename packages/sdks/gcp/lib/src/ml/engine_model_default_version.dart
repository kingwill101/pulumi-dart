// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EngineModelDefaultVersion {
  /// The name specified for the version when it was created.
  final pulumi.Input<String> name;

  /// Creates a new [EngineModelDefaultVersion].
  /// [name] The name specified for the version when it was created.
  EngineModelDefaultVersion({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory EngineModelDefaultVersion.fromMap(Map<String, dynamic> map) {
    return EngineModelDefaultVersion(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
