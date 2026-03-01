// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_quote_set_v3_quote_set_v3_args_doc}
/// The set of arguments for QuoteSetV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_quote_set_v3_quote_set_v3_args_doc}
class QuoteSetV3Args {
  /// Quota value for backup gigabytes. Changing
  /// this updates the existing quotaset.
  final pulumi.Input<int>? backupGigabytes;
  /// Quota value for backups. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? backups;
  /// Quota value for gigabytes. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? gigabytes;
  /// Quota value for groups. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? groups;
  /// Quota value for gigabytes per volume .
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? perVolumeGigabytes;
  /// ID of the project to manage quotas. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String> projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;
  /// Quota value for snapshots. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? snapshots;
  /// Key/Value pairs for setting quota for
  /// volumes types. Possible keys are `snapshots_<volume_type_name>`,
  /// `volumes_<volume_type_name>` and `gigabytes_<volume_type_name>`.
  final pulumi.Input<Map<String, String>>? volumeTypeQuota;
  /// Quota value for volumes. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? volumes;

  /// Creates a new [QuoteSetV3Args].
  /// [backupGigabytes] Quota value for backup gigabytes. Changing
  /// [backups] Quota value for backups. Changing this updates the
  /// [gigabytes] Quota value for gigabytes. Changing this updates the
  /// [groups] Quota value for groups. Changing this updates the
  /// [perVolumeGigabytes] Quota value for gigabytes per volume .
  /// [projectId] ID of the project to manage quotas. Changing this
  /// [region] The region in which to create the volume. If
  /// [snapshots] Quota value for snapshots. Changing this updates the
  /// [volumeTypeQuota] Key/Value pairs for setting quota for
  /// [volumes] Quota value for volumes. Changing this updates the
  QuoteSetV3Args({
    pulumi.Output<int>? backupGigabytes,
    pulumi.Output<int>? backups,
    pulumi.Output<int>? gigabytes,
    pulumi.Output<int>? groups,
    pulumi.Output<int>? perVolumeGigabytes,
    required pulumi.Output<String> projectId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? snapshots,
    pulumi.Output<Map<String, String>>? volumeTypeQuota,
    pulumi.Output<int>? volumes,
  }) :
      backupGigabytes = pulumi.Input.asOptionalInput<int>(backupGigabytes),
      backups = pulumi.Input.asOptionalInput<int>(backups),
      gigabytes = pulumi.Input.asOptionalInput<int>(gigabytes),
      groups = pulumi.Input.asOptionalInput<int>(groups),
      perVolumeGigabytes = pulumi.Input.asOptionalInput<int>(perVolumeGigabytes),
      projectId = pulumi.Input.asInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshots = pulumi.Input.asOptionalInput<int>(snapshots),
      volumeTypeQuota = pulumi.Input.asOptionalInput<Map<String, String>>(volumeTypeQuota),
      volumes = pulumi.Input.asOptionalInput<int>(volumes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGigabytes': ?backupGigabytes,
      'backups': ?backups,
      'gigabytes': ?gigabytes,
      'groups': ?groups,
      'perVolumeGigabytes': ?perVolumeGigabytes,
      'projectId': projectId,
      'region': ?region,
      'snapshots': ?snapshots,
      'volumeTypeQuota': ?volumeTypeQuota,
      'volumes': ?volumes,
    };
  }

  factory QuoteSetV3Args.fromMap(Map<String, dynamic> map) {
    return QuoteSetV3Args(
      backupGigabytes: map['backupGigabytes'] == null ? null : pulumi.Output.create<int>(map['backupGigabytes'] as int),
      backups: map['backups'] == null ? null : pulumi.Output.create<int>(map['backups'] as int),
      gigabytes: map['gigabytes'] == null ? null : pulumi.Output.create<int>(map['gigabytes'] as int),
      groups: map['groups'] == null ? null : pulumi.Output.create<int>(map['groups'] as int),
      perVolumeGigabytes: map['perVolumeGigabytes'] == null ? null : pulumi.Output.create<int>(map['perVolumeGigabytes'] as int),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshots: map['snapshots'] == null ? null : pulumi.Output.create<int>(map['snapshots'] as int),
      volumeTypeQuota: map['volumeTypeQuota'] == null ? null : pulumi.Output.create<Map<String, String>>((map['volumeTypeQuota'] as Map).cast<String, String>()),
      volumes: map['volumes'] == null ? null : pulumi.Output.create<int>(map['volumes'] as int),
    );
  }
}

