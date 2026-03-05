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
    required this.managementGroupId,
    required this.managementGroupsNamespace,
    required this.remediationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'managementGroupsNamespace': managementGroupsNamespace,
      'remediationName': remediationName,
    };
  }

  factory GetRemediationAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtManagementGroupArgs(
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      managementGroupsNamespace: pulumi.Input.fromValue(map['managementGroupsNamespace'] as String),
      remediationName: pulumi.Input.fromValue(map['remediationName'] as String),
    );
  }
}

