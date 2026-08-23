// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalsolution_v2_get_provisioning_config_args_doc}
/// Arguments for getProvisioningConfig.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_get_provisioning_config_args_doc}
class GetProvisioningConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> provisioningConfigId;

  /// Creates a new [GetProvisioningConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [provisioningConfigId] Required.
  const GetProvisioningConfigArgs({
    required this.location,
    this.project,
    required this.provisioningConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'provisioningConfigId': provisioningConfigId,
    };
  }

  factory GetProvisioningConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetProvisioningConfigArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningConfigId: pulumi.Input.fromValue(map['provisioningConfigId'] as String),
    );
  }
}
