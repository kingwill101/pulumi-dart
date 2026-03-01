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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> provisioningConfigId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      provisioningConfigId = pulumi.Input.asInput<String>(provisioningConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'provisioningConfigId': provisioningConfigId,
    };
  }

  factory GetProvisioningConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetProvisioningConfigArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      provisioningConfigId: pulumi.Output.create<String>(map['provisioningConfigId'] as String),
    );
  }
}

