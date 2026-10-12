// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Worker Pool.
  final pulumi.Input<String> name;
  /// Optional. The header field value
  final pulumi.Input<String> value;

  /// Creates a new [GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [value] Optional. The header field value
  const GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
