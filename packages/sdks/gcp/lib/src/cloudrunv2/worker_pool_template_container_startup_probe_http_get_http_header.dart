// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader {
  /// Required. The header field name
  final pulumi.Input<String> name;
  /// Optional. The header field value
  final pulumi.Input<String?>? value;

  /// Creates a new [WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [name] Required. The header field name
  /// [value] Optional. The header field value
  const WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
