// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_resource_policy_remediation_resource_policy_remediation_args_doc}
/// The set of arguments for ResourcePolicyRemediation.
/// {@endtemplate}
/// {@macro pulumi_core_resource_policy_remediation_resource_policy_remediation_args_doc}
class ResourcePolicyRemediationArgs {
  /// A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  final pulumi.Input<double>? failurePercentage;
  /// A list of the resource locations that will be remediated.
  final pulumi.Input<List<String>>? locationFilters;
  /// The name of the Policy Remediation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  final pulumi.Input<int>? parallelDeployments;
  /// The ID of the Policy Assignment that should be remediated.
  final pulumi.Input<String> policyAssignmentId;
  /// The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  final pulumi.Input<String>? policyDefinitionReferenceId;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  final pulumi.Input<int>? resourceCount;
  /// The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`.
  final pulumi.Input<String>? resourceDiscoveryMode;
  /// The Resource ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ResourcePolicyRemediationArgs].
  /// [failurePercentage] A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  /// [locationFilters] A list of the resource locations that will be remediated.
  /// [name] The name of the Policy Remediation. Changing this forces a new resource to be created.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The ID of the Policy Assignment that should be remediated.
  /// [policyDefinitionReferenceId] The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`.
  /// [resourceId] The Resource ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  const ResourcePolicyRemediationArgs({
    this.failurePercentage,
    this.locationFilters,
    this.name,
    this.parallelDeployments,
    required this.policyAssignmentId,
    this.policyDefinitionReferenceId,
    this.resourceCount,
    this.resourceDiscoveryMode,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failurePercentage': ?failurePercentage,
      'locationFilters': ?locationFilters,
      'name': ?name,
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'resourceCount': ?resourceCount,
      'resourceDiscoveryMode': ?resourceDiscoveryMode,
      'resourceId': resourceId,
    };
  }

  factory ResourcePolicyRemediationArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyRemediationArgs(
      failurePercentage: (() { final guardedValue = map['failurePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      locationFilters: (() { final guardedValue = map['locationFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelDeployments: (() { final guardedValue = map['parallelDeployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      policyAssignmentId: pulumi.Input.fromValue(map['policyAssignmentId'] as String),
      policyDefinitionReferenceId: (() { final guardedValue = map['policyDefinitionReferenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceCount: (() { final guardedValue = map['resourceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceDiscoveryMode: (() { final guardedValue = map['resourceDiscoveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
