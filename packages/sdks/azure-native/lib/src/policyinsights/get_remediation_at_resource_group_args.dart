// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_remediation_at_resource_group_args_doc}
/// Arguments for getRemediationAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_remediation_at_resource_group_args_doc}
class GetRemediationAtResourceGroupArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;

  /// Resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRemediationAtResourceGroupArgs].
  /// [remediationName] The name of the remediation.
  /// [resourceGroupName] Resource group name.
  GetRemediationAtResourceGroupArgs({
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
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
