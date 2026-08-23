// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Job.
  final pulumi.Input<String> name;
  /// The header field value.
  final pulumi.Input<String> value;

  /// Creates a new [GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run v2 Job.
  /// [value] The header field value.
  const GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
