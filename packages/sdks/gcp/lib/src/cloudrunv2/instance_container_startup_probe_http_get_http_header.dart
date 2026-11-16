// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceContainerStartupProbeHttpGetHttpHeader {
  /// Required. The header field name
  final pulumi.Input<String?>? name;
  /// Optional. The header field value
  final pulumi.Input<String?>? value;

  /// Creates a new [InstanceContainerStartupProbeHttpGetHttpHeader].
  /// [name] Required. The header field name
  /// [value] Optional. The header field value
  const InstanceContainerStartupProbeHttpGetHttpHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory InstanceContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return InstanceContainerStartupProbeHttpGetHttpHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
