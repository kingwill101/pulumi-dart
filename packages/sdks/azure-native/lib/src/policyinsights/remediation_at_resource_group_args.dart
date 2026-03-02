// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_filters.dart';
import 'remediation_properties_failure_threshold.dart';

/// {@template pulumi_policyinsights_remediation_at_resource_group_args_doc}
/// The set of arguments for RemediationAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_remediation_at_resource_group_args_doc}
class RemediationAtResourceGroupArgs {
  /// The remediation failure threshold settings
  final pulumi.Input<RemediationPropertiesFailureThreshold>? failureThreshold;
  /// The filters that will be applied to determine which resources to remediate.
  final pulumi.Input<RemediationFilters>? filters;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  final pulumi.Input<int>? parallelDeployments;
  /// The resource ID of the policy assignment that should be remediated.
  final pulumi.Input<String>? policyAssignmentId;
  /// The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  final pulumi.Input<String>? policyDefinitionReferenceId;
  /// The name of the remediation.
  final pulumi.Input<String>? remediationName;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  final pulumi.Input<int>? resourceCount;
  /// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  final pulumi.Input<String>? resourceDiscoveryMode;
  /// Resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [RemediationAtResourceGroupArgs].
  /// [failureThreshold] The remediation failure threshold settings
  /// [filters] The filters that will be applied to determine which resources to remediate.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The resource ID of the policy assignment that should be remediated.
  /// [policyDefinitionReferenceId] The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [remediationName] The name of the remediation.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  /// [resourceGroupName] Resource group name.
  RemediationAtResourceGroupArgs({
    this.failureThreshold,
    this.filters,
    this.parallelDeployments,
    this.policyAssignmentId,
    this.policyDefinitionReferenceId,
    this.remediationName,
    this.resourceCount,
    this.resourceDiscoveryMode,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?pulumi.Input.mapOptionalInputValue<RemediationPropertiesFailureThreshold, Map<String, dynamic>>(failureThreshold, (value) => value.toMap()),
      'filters': ?pulumi.Input.mapOptionalInputValue<RemediationFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': ?policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'remediationName': ?remediationName,
      'resourceCount': ?resourceCount,
      'resourceDiscoveryMode': ?resourceDiscoveryMode,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory RemediationAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return RemediationAtResourceGroupArgs(
      failureThreshold: map['failureThreshold'] == null ? null : (RemediationPropertiesFailureThreshold.fromMap((map['failureThreshold']! as Map).cast<String, dynamic>())).input(),
      filters: map['filters'] == null ? null : (RemediationFilters.fromMap((map['filters']! as Map).cast<String, dynamic>())).input(),
      parallelDeployments: map['parallelDeployments'] == null ? null : (map['parallelDeployments']! as int).input(),
      policyAssignmentId: map['policyAssignmentId'] == null ? null : (map['policyAssignmentId']! as String).input(),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : (map['policyDefinitionReferenceId']! as String).input(),
      remediationName: map['remediationName'] == null ? null : (map['remediationName']! as String).input(),
      resourceCount: map['resourceCount'] == null ? null : (map['resourceCount']! as int).input(),
      resourceDiscoveryMode: map['resourceDiscoveryMode'] == null ? null : (map['resourceDiscoveryMode']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

