// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader {
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;
  /// The header field value.
  final pulumi.Input<String> value;

  /// Creates a new [GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader].
  /// [name] Name must be unique within a Google Cloud project and region.
  /// [value] The header field value.
  const GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
