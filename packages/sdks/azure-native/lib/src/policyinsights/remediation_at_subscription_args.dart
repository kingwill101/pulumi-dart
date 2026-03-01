// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_filters.dart';
import 'remediation_properties_failure_threshold.dart';

/// {@template pulumi_policyinsights_remediation_at_subscription_args_doc}
/// The set of arguments for RemediationAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_remediation_at_subscription_args_doc}
class RemediationAtSubscriptionArgs {
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

  /// Creates a new [RemediationAtSubscriptionArgs].
  /// [failureThreshold] The remediation failure threshold settings
  /// [filters] The filters that will be applied to determine which resources to remediate.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The resource ID of the policy assignment that should be remediated.
  /// [policyDefinitionReferenceId] The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [remediationName] The name of the remediation.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  RemediationAtSubscriptionArgs({
    pulumi.Output<RemediationPropertiesFailureThreshold>? failureThreshold,
    pulumi.Output<RemediationFilters>? filters,
    pulumi.Output<int>? parallelDeployments,
    pulumi.Output<String>? policyAssignmentId,
    pulumi.Output<String>? policyDefinitionReferenceId,
    pulumi.Output<String>? remediationName,
    pulumi.Output<int>? resourceCount,
    pulumi.Output<String>? resourceDiscoveryMode,
  }) :
      failureThreshold = pulumi.Input.asOptionalInput<RemediationPropertiesFailureThreshold>(failureThreshold),
      filters = pulumi.Input.asOptionalInput<RemediationFilters>(filters),
      parallelDeployments = pulumi.Input.asOptionalInput<int>(parallelDeployments),
      policyAssignmentId = pulumi.Input.asOptionalInput<String>(policyAssignmentId),
      policyDefinitionReferenceId = pulumi.Input.asOptionalInput<String>(policyDefinitionReferenceId),
      remediationName = pulumi.Input.asOptionalInput<String>(remediationName),
      resourceCount = pulumi.Input.asOptionalInput<int>(resourceCount),
      resourceDiscoveryMode = pulumi.Input.asOptionalInput<String>(resourceDiscoveryMode);

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
    };
  }

  factory RemediationAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return RemediationAtSubscriptionArgs(
      failureThreshold: map['failureThreshold'] == null ? null : pulumi.Output.create<RemediationPropertiesFailureThreshold>(RemediationPropertiesFailureThreshold.fromMap((map['failureThreshold'] as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Output.create<RemediationFilters>(RemediationFilters.fromMap((map['filters'] as Map).cast<String, dynamic>())),
      parallelDeployments: map['parallelDeployments'] == null ? null : pulumi.Output.create<int>(map['parallelDeployments'] as int),
      policyAssignmentId: map['policyAssignmentId'] == null ? null : pulumi.Output.create<String>(map['policyAssignmentId'] as String),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : pulumi.Output.create<String>(map['policyDefinitionReferenceId'] as String),
      remediationName: map['remediationName'] == null ? null : pulumi.Output.create<String>(map['remediationName'] as String),
      resourceCount: map['resourceCount'] == null ? null : pulumi.Output.create<int>(map['resourceCount'] as int),
      resourceDiscoveryMode: map['resourceDiscoveryMode'] == null ? null : pulumi.Output.create<String>(map['resourceDiscoveryMode'] as String),
    );
  }
}

