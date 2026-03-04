// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader {
  /// Required. The header field name
  final pulumi.Input<int> port;

  /// Optional. The header field value
  final pulumi.Input<String> value;

  /// Creates a new [GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [port] Required. The header field name
  /// [value] Optional. The header field value
  GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.port,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'value': value};
  }

  factory GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader(
      port: pulumi.Input.fromValue(map['port'] as int),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
