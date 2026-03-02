// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader {
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;
  /// The header field value.
  final pulumi.Input<String> value;

  /// Creates a new [GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader].
  /// [name] The name of the Cloud Run Service.
  /// [value] The header field value.
  GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

