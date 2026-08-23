// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader {
  /// The header field name.
  /// This will be canonicalized upon output, so case-variant names will be
  /// understood as the same header.
  final pulumi.Input<String>? name;
  /// The header field value
  final pulumi.Input<String>? value;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader].
  /// [name] The header field name.
  /// [value] The header field value
  const AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
