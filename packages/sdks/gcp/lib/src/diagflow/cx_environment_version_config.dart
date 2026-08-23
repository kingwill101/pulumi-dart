// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxEnvironmentVersionConfig {
  /// Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
  final pulumi.Input<String> version;

  /// Creates a new [CxEnvironmentVersionConfig].
  /// [version] Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
  const CxEnvironmentVersionConfig({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory CxEnvironmentVersionConfig.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentVersionConfig(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
