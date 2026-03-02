// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader {
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String> value;

  /// Creates a new [GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run v2 Service.
  /// [value] The header field value
  GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerLivenessProbeHttpGetHttpHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

