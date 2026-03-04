// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_filters.dart';
import 'remediation_properties_failure_threshold.dart';

/// {@template pulumi_policyinsights_remediation_at_resource_args_doc}
/// The set of arguments for RemediationAtResource.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_remediation_at_resource_args_doc}
class RemediationAtResourceArgs {
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

  /// Resource ID.
  final pulumi.Input<String> resourceId;

  /// Creates a new [RemediationAtResourceArgs].
  /// [failureThreshold] The remediation failure threshold settings
  /// [filters] The filters that will be applied to determine which resources to remediate.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The resource ID of the policy assignment that should be remediated.
  /// [policyDefinitionReferenceId] The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [remediationName] The name of the remediation.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  /// [resourceId] Resource ID.
  RemediationAtResourceArgs({
    this.failureThreshold,
    this.filters,
    this.parallelDeployments,
    this.policyAssignmentId,
    this.policyDefinitionReferenceId,
    this.remediationName,
    this.resourceCount,
    this.resourceDiscoveryMode,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            RemediationPropertiesFailureThreshold,
            Map<String, dynamic>
          >(failureThreshold, (value) => value.toMap()),
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            RemediationFilters,
            Map<String, dynamic>
          >(filters, (value) => value.toMap()),
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': ?policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'remediationName': ?remediationName,
      'resourceCount': ?resourceCount,
      'resourceDiscoveryMode': ?resourceDiscoveryMode,
      'resourceId': resourceId,
    };
  }

  factory RemediationAtResourceArgs.fromMap(Map<String, dynamic> map) {
    return RemediationAtResourceArgs(
      failureThreshold: (() {
        final guardedValue = map['failureThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RemediationPropertiesFailureThreshold.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RemediationFilters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parallelDeployments: (() {
        final guardedValue = map['parallelDeployments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      policyAssignmentId: (() {
        final guardedValue = map['policyAssignmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDefinitionReferenceId: (() {
        final guardedValue = map['policyDefinitionReferenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediationName: (() {
        final guardedValue = map['remediationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceCount: (() {
        final guardedValue = map['resourceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceDiscoveryMode: (() {
        final guardedValue = map['resourceDiscoveryMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
