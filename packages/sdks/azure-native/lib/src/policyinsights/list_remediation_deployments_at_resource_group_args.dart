// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_list_remediation_deployments_at_resource_group_args_doc}
/// Arguments for listRemediationDeploymentsAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_list_remediation_deployments_at_resource_group_args_doc}
class ListRemediationDeploymentsAtResourceGroupArgs {
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;
  /// Resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Maximum number of records to return.
  final pulumi.Input<int>? top;

  /// Creates a new [ListRemediationDeploymentsAtResourceGroupArgs].
  /// [remediationName] The name of the remediation.
  /// [resourceGroupName] Resource group name.
  /// [top] Maximum number of records to return.
  ListRemediationDeploymentsAtResourceGroupArgs({
    required this.remediationName,
    required this.resourceGroupName,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationName': remediationName,
      'resourceGroupName': resourceGroupName,
      'top': ?top,
    };
  }

  factory ListRemediationDeploymentsAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtResourceGroupArgs(
      remediationName: (map['remediationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      top: map['top'] == null ? null : (map['top'] as int).input(),
    );
  }
}

