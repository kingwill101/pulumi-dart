// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// Required. The header field name
  final pulumi.Input<int> port;
  /// Optional. The header field value
  final pulumi.Input<String> value;

  /// Creates a new [GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader].
  /// [port] Required. The header field name
  /// [value] Optional. The header field value
  GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.port,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'value': value,
    };
  }

  factory GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader(
      port: (map['port'] as int).input(),
      value: (map['value'] as String).input(),
    );
  }
}

