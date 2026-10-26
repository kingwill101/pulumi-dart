// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_protection_policy_backup_plan_detail.dart';
import 'auto_protection_policy_criteria.dart';

/// {@template pulumi_backupdisasterrecovery_auto_protection_policy_auto_protection_policy_args_doc}
/// The set of arguments for AutoProtectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_auto_protection_policy_auto_protection_policy_args_doc}
class AutoProtectionPolicyArgs {
  /// The ID of the auto protection policy. This becomes the final component of the policy's resource name.
  final pulumi.Input<String> autoProtectionPolicyId;
  /// The backup plans to apply to the resources that match the policy's criteria. Each entry
  /// specifies a resource type and the backup plan that protects resources of that type.
  /// Currently, only one entry is supported.
  /// Structure is documented below.
  final pulumi.Input<List<AutoProtectionPolicyBackupPlanDetail>> backupPlanDetails;
  /// The criteria that a resource must meet to be protected by the policy.
  /// Structure is documented below.
  final pulumi.Input<AutoProtectionPolicyCriteria> criteria;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the auto protection policy.
  final pulumi.Input<String?>? description;
  /// The location of the auto protection policy.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AutoProtectionPolicyArgs].
  /// [autoProtectionPolicyId] The ID of the auto protection policy. This becomes the final component of the policy's resource name.
  /// [backupPlanDetails] The backup plans to apply to the resources that match the policy's criteria. Each entry
  /// [criteria] The criteria that a resource must meet to be protected by the policy.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the auto protection policy.
  /// [location] The location of the auto protection policy.
  /// [project] The ID of the project in which the resource belongs.
  const AutoProtectionPolicyArgs({
    required this.autoProtectionPolicyId,
    required this.backupPlanDetails,
    required this.criteria,
    this.deletionPolicy,
    this.description,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProtectionPolicyId': autoProtectionPolicyId,
      'backupPlanDetails': pulumi.Input.mapInputValue<List<AutoProtectionPolicyBackupPlanDetail>, List<Map<String, dynamic>>>(backupPlanDetails, (value) => pulumi.Input.encodeList<AutoProtectionPolicyBackupPlanDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criteria': pulumi.Input.mapInputValue<AutoProtectionPolicyCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': location,
      'project': ?project,
    };
  }

  factory AutoProtectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyArgs(
      autoProtectionPolicyId: pulumi.Input.fromValue(map['autoProtectionPolicyId'] as String),
      backupPlanDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProtectionPolicyBackupPlanDetail>(map['backupPlanDetails']!, (value) => AutoProtectionPolicyBackupPlanDetail.fromMap((value as Map).cast<String, dynamic>()))),
      criteria: pulumi.Input.fromValue(AutoProtectionPolicyCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
