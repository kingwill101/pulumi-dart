// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders {
  /// Required. The header field name
  final pulumi.Input<int> port;
  /// Optional. The header field value
  final pulumi.Input<String>? value;

  /// Creates a new [WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders].
  /// [port] Required. The header field name
  /// [value] Optional. The header field value
  WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders({
    required this.port,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'value': ?value,
    };
  }

  factory WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders(
      port: pulumi.Input.fromValue(map['port'] as int),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

