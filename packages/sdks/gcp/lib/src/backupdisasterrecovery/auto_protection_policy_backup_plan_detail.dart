// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoProtectionPolicyBackupPlanDetail {
  /// The resource name of the backup plan to apply to the matching resources, in the format
  /// `projects/{project}/locations/{location}/backupPlans/{backup_plan_id}`. The backup plan
  /// must be in the same location as the auto protection policy.
  final pulumi.Input<String> backupPlan;
  /// The type of resource that this policy automatically protects, for example
  /// `compute.googleapis.com/Instance` or `compute.googleapis.com/Disk`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [AutoProtectionPolicyBackupPlanDetail].
  /// [backupPlan] The resource name of the backup plan to apply to the matching resources, in the format
  /// [resourceType] The type of resource that this policy automatically protects, for example
  const AutoProtectionPolicyBackupPlanDetail({
    required this.backupPlan,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'resourceType': resourceType,
    };
  }

  factory AutoProtectionPolicyBackupPlanDetail.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyBackupPlanDetail(
      backupPlan: pulumi.Input.fromValue(map['backupPlan'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
