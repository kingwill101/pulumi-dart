// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_backup_plan_association_backup_plan_association_args_doc}
/// The set of arguments for BackupPlanAssociation.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_backup_plan_association_backup_plan_association_args_doc}
class BackupPlanAssociationArgs {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  /// - A Backup Plan configured for 'file.googleapis.com/Instance' can only protect Filestore instances.
  /// - A Backup Plan configured for 'sqladmin.googleapis.com/Instance' can only protect Cloud SQL instances.
  final pulumi.Input<String> backupPlan;
  /// The id of backupplan association
  final pulumi.Input<String> backupPlanAssociationId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The location for the backupplan association
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource for which BPA needs to be created
  final pulumi.Input<String> resource;
  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "compute.googleapis.com/RegionDisk", and "file.googleapis.com/Instance"
  final pulumi.Input<String> resourceType;

  /// Creates a new [BackupPlanAssociationArgs].
  /// [backupPlan] The BP with which resource needs to be created
  /// [backupPlanAssociationId] The id of backupplan association
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location for the backupplan association
  /// [project] The ID of the project in which the resource belongs.
  /// [resource] The resource for which BPA needs to be created
  /// [resourceType] The resource type of workload on which backupplan is applied.
  const BackupPlanAssociationArgs({
    required this.backupPlan,
    required this.backupPlanAssociationId,
    this.deletionPolicy,
    required this.location,
    this.project,
    required this.resource,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'backupPlanAssociationId': backupPlanAssociationId,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'resource': resource,
      'resourceType': resourceType,
    };
  }

  factory BackupPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationArgs(
      backupPlan: pulumi.Input.fromValue(map['backupPlan'] as String),
      backupPlanAssociationId: pulumi.Input.fromValue(map['backupPlanAssociationId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
