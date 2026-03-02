// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceGroupPolicyRemediation resources.
class ResourceGroupPolicyRemediationState {
  /// A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  final pulumi.Input<double>? failurePercentage;
  /// A list of the resource locations that will be remediated.
  final pulumi.Input<List<String>>? locationFilters;
  /// The name of the Policy Remediation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  final pulumi.Input<int>? parallelDeployments;
  /// The ID of the Policy Assignment that should be remediated.
  final pulumi.Input<String>? policyAssignmentId;
  /// The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  final pulumi.Input<String>? policyDefinitionReferenceId;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  final pulumi.Input<int>? resourceCount;
  /// The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`.
  final pulumi.Input<String>? resourceDiscoveryMode;
  /// The Resource Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [ResourceGroupPolicyRemediationState].
  /// [failurePercentage] A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  /// [locationFilters] A list of the resource locations that will be remediated.
  /// [name] The name of the Policy Remediation. Changing this forces a new resource to be created.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The ID of the Policy Assignment that should be remediated.
  /// [policyDefinitionReferenceId] The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`.
  /// [resourceGroupId] The Resource Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  ResourceGroupPolicyRemediationState({
    this.failurePercentage,
    this.locationFilters,
    this.name,
    this.parallelDeployments,
    this.policyAssignmentId,
    this.policyDefinitionReferenceId,
    this.resourceCount,
    this.resourceDiscoveryMode,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failurePercentage': ?failurePercentage,
      'locationFilters': ?locationFilters,
      'name': ?name,
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': ?policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'resourceCount': ?resourceCount,
      'resourceDiscoveryMode': ?resourceDiscoveryMode,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory ResourceGroupPolicyRemediationState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyRemediationState(
      failurePercentage: map['failurePercentage'] == null ? null : (map['failurePercentage'] as double).input(),
      locationFilters: map['locationFilters'] == null ? null : ((map['locationFilters'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parallelDeployments: map['parallelDeployments'] == null ? null : (map['parallelDeployments'] as int).input(),
      policyAssignmentId: map['policyAssignmentId'] == null ? null : (map['policyAssignmentId'] as String).input(),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : (map['policyDefinitionReferenceId'] as String).input(),
      resourceCount: map['resourceCount'] == null ? null : (map['resourceCount'] as int).input(),
      resourceDiscoveryMode: map['resourceDiscoveryMode'] == null ? null : (map['resourceDiscoveryMode'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
    );
  }
}

