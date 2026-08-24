// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectCanonicalDeploymentEnvVars {
  /// Available values: "plain*text", "secret*text".
  final pulumi.Input<String?>? type;
  /// Environment variable value.
  final pulumi.Input<String?>? value;

  /// Creates a new [PagesProjectCanonicalDeploymentEnvVars].
  /// [type] Available values: "plain*text", "secret*text".
  /// [value] Environment variable value.
  const PagesProjectCanonicalDeploymentEnvVars({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory PagesProjectCanonicalDeploymentEnvVars.fromMap(Map<String, dynamic> map) {
    return PagesProjectCanonicalDeploymentEnvVars(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
