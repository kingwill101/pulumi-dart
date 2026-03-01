// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_attestation_at_resource_group_args_doc}
/// Arguments for getAttestationAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_attestation_at_resource_group_args_doc}
class GetAttestationAtResourceGroupArgs {
  /// The name of the attestation.
  final pulumi.Input<String> attestationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAttestationAtResourceGroupArgs].
  /// [attestationName] The name of the attestation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAttestationAtResourceGroupArgs({
    required pulumi.Output<String> attestationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      attestationName = pulumi.Input.asInput<String>(attestationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationName': attestationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAttestationAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestationAtResourceGroupArgs(
      attestationName: pulumi.Output.create<String>(map['attestationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

