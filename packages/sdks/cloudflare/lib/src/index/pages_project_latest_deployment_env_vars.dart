// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectLatestDeploymentEnvVars {
  /// Available values: "plain*text", "secret*text".
  final pulumi.Input<String?>? type;
  /// Environment variable value.
  final pulumi.Input<String?>? value;

  /// Creates a new [PagesProjectLatestDeploymentEnvVars].
  /// [type] Available values: "plain*text", "secret*text".
  /// [value] Environment variable value.
  const PagesProjectLatestDeploymentEnvVars({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory PagesProjectLatestDeploymentEnvVars.fromMap(Map<String, dynamic> map) {
    return PagesProjectLatestDeploymentEnvVars(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
