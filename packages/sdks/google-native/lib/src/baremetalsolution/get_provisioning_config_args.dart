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
  GetProvisioningConfigArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      provisioningConfigId: (map['provisioningConfigId'] as String).input(),
    );
  }
}

