// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_remediation_at_management_group_args_doc}
/// Arguments for getRemediationAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_remediation_at_management_group_args_doc}
class GetRemediationAtManagementGroupArgs {
  /// Management group ID.
  final pulumi.Input<String> managementGroupId;
  /// The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  final pulumi.Input<String> managementGroupsNamespace;
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;

  /// Creates a new [GetRemediationAtManagementGroupArgs].
  /// [managementGroupId] Management group ID.
  /// [managementGroupsNamespace] The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  /// [remediationName] The name of the remediation.
  GetRemediationAtManagementGroupArgs({
    required pulumi.Output<String> managementGroupId,
    required pulumi.Output<String> managementGroupsNamespace,
    required pulumi.Output<String> remediationName,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      managementGroupsNamespace = pulumi.Input.asInput<String>(managementGroupsNamespace),
      remediationName = pulumi.Input.asInput<String>(remediationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'managementGroupsNamespace': managementGroupsNamespace,
      'remediationName': remediationName,
    };
  }

  factory GetRemediationAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtManagementGroupArgs(
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      managementGroupsNamespace: pulumi.Output.create<String>(map['managementGroupsNamespace'] as String),
      remediationName: pulumi.Output.create<String>(map['remediationName'] as String),
    );
  }
}

