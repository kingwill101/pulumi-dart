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
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region of the Backup Plan.
  final pulumi.Input<String>? location;
  /// The full name of the BackupPlan Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
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
  /// [description] User specified descriptive string for this BackupPlan.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Backup Plan.
  /// [name] The full name of the BackupPlan Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [protectedPodCount] The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [retentionPolicy] RetentionPolicy governs lifecycle of Backups created under this plan.
  /// [state] The State of the BackupPlan.
  /// [stateReason] Detailed description of why BackupPlan is in its current state.
  /// [uid] Server generated, unique identifier of UUID format.
  BackupPlanState({
    pulumi.Output<BackupPlanBackupConfig>? backupConfig,
    pulumi.Output<BackupPlanBackupSchedule>? backupSchedule,
    pulumi.Output<String>? cluster,
    pulumi.Output<bool>? deactivated,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<int>? protectedPodCount,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<BackupPlanRetentionPolicy>? retentionPolicy,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateReason,
    pulumi.Output<String>? uid,
  }) :
      backupConfig = pulumi.Input.asOptionalInput<BackupPlanBackupConfig>(backupConfig),
      backupSchedule = pulumi.Input.asOptionalInput<BackupPlanBackupSchedule>(backupSchedule),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      deactivated = pulumi.Input.asOptionalInput<bool>(deactivated),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      protectedPodCount = pulumi.Input.asOptionalInput<int>(protectedPodCount),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      retentionPolicy = pulumi.Input.asOptionalInput<BackupPlanRetentionPolicy>(retentionPolicy),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateReason = pulumi.Input.asOptionalInput<String>(stateReason),
      uid = pulumi.Input.asOptionalInput<String>(uid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupConfig, Map<String, dynamic>>(backupConfig, (value) => value.toMap()),
      'backupSchedule': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupSchedule, Map<String, dynamic>>(backupSchedule, (value) => value.toMap()),
      'cluster': ?cluster,
      'deactivated': ?deactivated,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
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
      backupConfig: map['backupConfig'] == null ? null : pulumi.Output.create<BackupPlanBackupConfig>(BackupPlanBackupConfig.fromMap((map['backupConfig'] as Map).cast<String, dynamic>())),
      backupSchedule: map['backupSchedule'] == null ? null : pulumi.Output.create<BackupPlanBackupSchedule>(BackupPlanBackupSchedule.fromMap((map['backupSchedule'] as Map).cast<String, dynamic>())),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      deactivated: map['deactivated'] == null ? null : pulumi.Output.create<bool>(map['deactivated'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      protectedPodCount: map['protectedPodCount'] == null ? null : pulumi.Output.create<int>(map['protectedPodCount'] as int),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      retentionPolicy: map['retentionPolicy'] == null ? null : pulumi.Output.create<BackupPlanRetentionPolicy>(BackupPlanRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateReason: map['stateReason'] == null ? null : pulumi.Output.create<String>(map['stateReason'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

