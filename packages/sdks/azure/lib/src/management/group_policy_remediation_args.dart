// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_group_policy_remediation_group_policy_remediation_args_doc}
/// The set of arguments for GroupPolicyRemediation.
/// {@endtemplate}
/// {@macro pulumi_management_group_policy_remediation_group_policy_remediation_args_doc}
class GroupPolicyRemediationArgs {
  /// The percentage failure threshold. Possible values range between `0.0` and `1.0`. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  final pulumi.Input<double>? failurePercentage;
  /// A list of the resource locations that will be remediated.
  final pulumi.Input<List<String>>? locationFilters;
  /// The Management Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> managementGroupId;
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

  /// Creates a new [GroupPolicyRemediationArgs].
  /// [failurePercentage] The percentage failure threshold. Possible values range between `0.0` and `1.0`. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold.
  /// [locationFilters] A list of the resource locations that will be remediated.
  /// [managementGroupId] The Management Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created.
  /// [name] The name of the Policy Remediation. Changing this forces a new resource to be created.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The ID of the Policy Assignment that should be remediated.
  /// [policyDefinitionReferenceId] The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  GroupPolicyRemediationArgs({
    pulumi.Output<double>? failurePercentage,
    pulumi.Output<List<String>>? locationFilters,
    required pulumi.Output<String> managementGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<int>? parallelDeployments,
    required pulumi.Output<String> policyAssignmentId,
    pulumi.Output<String>? policyDefinitionReferenceId,
    pulumi.Output<int>? resourceCount,
  }) :
      failurePercentage = pulumi.Input.asOptionalInput<double>(failurePercentage),
      locationFilters = pulumi.Input.asOptionalInput<List<String>>(locationFilters),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parallelDeployments = pulumi.Input.asOptionalInput<int>(parallelDeployments),
      policyAssignmentId = pulumi.Input.asInput<String>(policyAssignmentId),
      policyDefinitionReferenceId = pulumi.Input.asOptionalInput<String>(policyDefinitionReferenceId),
      resourceCount = pulumi.Input.asOptionalInput<int>(resourceCount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failurePercentage': ?failurePercentage,
      'locationFilters': ?locationFilters,
      'managementGroupId': managementGroupId,
      'name': ?name,
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'resourceCount': ?resourceCount,
    };
  }

  factory GroupPolicyRemediationArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyRemediationArgs(
      failurePercentage: map['failurePercentage'] == null ? null : pulumi.Output.create<double>(map['failurePercentage'] as double),
      locationFilters: map['locationFilters'] == null ? null : pulumi.Output.create<List<String>>((map['locationFilters'] as List).cast<String>()),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parallelDeployments: map['parallelDeployments'] == null ? null : pulumi.Output.create<int>(map['parallelDeployments'] as int),
      policyAssignmentId: pulumi.Output.create<String>(map['policyAssignmentId'] as String),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : pulumi.Output.create<String>(map['policyDefinitionReferenceId'] as String),
      resourceCount: map['resourceCount'] == null ? null : pulumi.Output.create<int>(map['resourceCount'] as int),
    );
  }
}

