// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_config.dart';
import 'backup_plan_backup_schedule.dart';
import 'backup_plan_retention_policy.dart';

/// Input properties used for looking up and filtering BackupPlan resources.
class BackupPlanState {
  /// Defines the configuration of Backups created via this BackupPlan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupConfig>? backupConfig;
  /// Defines a schedule for automatic Backup creation via this BackupPlan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupSchedule>? backupSchedule;
  /// The source cluster from which Backups will be created via this BackupPlan.
  final pulumi.Input<String>? cluster;
  /// This flag indicates whether this BackupPlan has been deactivated.
  /// Setting this field to True locks the BackupPlan such that no further updates will be allowed
  /// (except deletes), including the deactivated field itself. It also prevents any new Backups
  /// from being created via this BackupPlan (including scheduled Backups).
  final pulumi.Input<bool>? deactivated;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User specified descriptive string for this BackupPlan.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a backup plan from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates
  /// in order to avoid race conditions: An etag is returned in the response to backupPlans.get,
  /// and systems are expected to put that etag in the request to backupPlans.patch or
  /// backupPlans.delete to ensure that their change will be applied to the same version of the resource.
  final pulumi.Input<String>? etag;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key-&gt;value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region of the Backup Plan.
  final pulumi.Input<String>? location;
  /// The full name of the BackupPlan Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The number of Kubernetes Namespaces backed up in the last successful Backup created via this BackupPlan.
  final pulumi.Input<int>? protectedNamespaceCount;
  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  final pulumi.Input<int>? protectedPodCount;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// RetentionPolicy governs lifecycle of Backups created under this plan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanRetentionPolicy>? retentionPolicy;
  /// The State of the BackupPlan.
  final pulumi.Input<String>? state;
  /// Detailed description of why BackupPlan is in its current state.
  final pulumi.Input<String>? stateReason;
  /// Server generated, unique identifier of UUID format.
  final pulumi.Input<String>? uid;

  /// Creates a new [BackupPlanState].
  /// [backupConfig] Defines the configuration of Backups created via this BackupPlan.
  /// [backupSchedule] Defines a schedule for automatic Backup creation via this BackupPlan.
  /// [cluster] The source cluster from which Backups will be created via this BackupPlan.
  /// [deactivated] This flag indicates whether this BackupPlan has been deactivated.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User specified descriptive string for this BackupPlan.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Backup Plan.
  /// [name] The full name of the BackupPlan Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [protectedNamespaceCount] The number of Kubernetes Namespaces backed up in the last successful Backup created via this BackupPlan.
  /// [protectedPodCount] The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [retentionPolicy] RetentionPolicy governs lifecycle of Backups created under this plan.
  /// [state] The State of the BackupPlan.
  /// [stateReason] Detailed description of why BackupPlan is in its current state.
  /// [uid] Server generated, unique identifier of UUID format.
  const BackupPlanState({
    this.backupConfig,
    this.backupSchedule,
    this.cluster,
    this.deactivated,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.protectedNamespaceCount,
    this.protectedPodCount,
    this.pulumiLabels,
    this.retentionPolicy,
    this.state,
    this.stateReason,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupConfig, Map<String, dynamic>>(backupConfig, (value) => value.toMap()),
      'backupSchedule': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupSchedule, Map<String, dynamic>>(backupSchedule, (value) => value.toMap()),
      'cluster': ?cluster,
      'deactivated': ?deactivated,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'protectedNamespaceCount': ?protectedNamespaceCount,
      'protectedPodCount': ?protectedPodCount,
      'pulumiLabels': ?pulumiLabels,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPlanRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
    };
  }

  factory BackupPlanState.fromMap(Map<String, dynamic> map) {
    return BackupPlanState(
      backupConfig: (() { final guardedValue = map['backupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPlanBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupSchedule: (() { final guardedValue = map['backupSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPlanBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deactivated: (() { final guardedValue = map['deactivated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedNamespaceCount: (() { final guardedValue = map['protectedNamespaceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protectedPodCount: (() { final guardedValue = map['protectedPodCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPlanRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
