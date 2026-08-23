// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Worker Pool.
  final pulumi.Input<String> name;
  /// Required. The header field name
  final pulumi.Input<int> port;
  /// Optional. The header field value
  final pulumi.Input<String> value;

  /// Creates a new [GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [port] Required. The header field name
  /// [value] Optional. The header field value
  const GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    required this.port,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
      'value': value,
    };
  }

  factory GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
