// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_remediation_at_resource_group_args_doc}
/// Arguments for getRemediationAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_remediation_at_resource_group_args_doc}
class GetRemediationAtResourceGroupArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRemediationAtResourceGroupArgs].
  /// [remediationName] The name of the remediation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetRemediationAtResourceGroupArgs({
    required this.remediationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationName': remediationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRemediationAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtResourceGroupArgs(
      remediationName: pulumi.Input.fromValue(map['remediationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
