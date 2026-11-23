// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// Required. The header field name
  final pulumi.Input<String> name;
  /// Optional. The header field value
  final pulumi.Input<String?>? value;

  /// Creates a new [WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader].
  /// [name] Required. The header field name
  /// [value] Optional. The header field value
  const WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
