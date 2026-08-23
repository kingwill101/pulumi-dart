// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders {
  /// Required. The header field name
  final pulumi.Input<String>? name;
  /// (Optional, Deprecated)
  /// Required. The header field name
  ///
  /// &gt; **Warning:** `port` field is deprecated and will be removed in a future major release. It was never supported by the API.
  final pulumi.Input<int>? port;
  /// Optional. The header field value
  final pulumi.Input<String>? value;

  /// Creates a new [WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders].
  /// [name] Required. The header field name
  /// [port] (Optional, Deprecated)
  /// [value] Optional. The header field value
  const WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders({
    this.name,
    this.port,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'port': ?port,
      'value': ?value,
    };
  }

  factory WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeaders(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
