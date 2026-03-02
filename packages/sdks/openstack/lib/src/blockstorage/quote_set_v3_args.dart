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
    this.backupGigabytes,
    this.backups,
    this.gigabytes,
    this.groups,
    this.perVolumeGigabytes,
    required this.projectId,
    this.region,
    this.snapshots,
    this.volumeTypeQuota,
    this.volumes,
  });

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
      backupGigabytes: map['backupGigabytes'] == null ? null : (map['backupGigabytes']! as int).input(),
      backups: map['backups'] == null ? null : (map['backups']! as int).input(),
      gigabytes: map['gigabytes'] == null ? null : (map['gigabytes']! as int).input(),
      groups: map['groups'] == null ? null : (map['groups']! as int).input(),
      perVolumeGigabytes: map['perVolumeGigabytes'] == null ? null : (map['perVolumeGigabytes']! as int).input(),
      projectId: (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      snapshots: map['snapshots'] == null ? null : (map['snapshots']! as int).input(),
      volumeTypeQuota: map['volumeTypeQuota'] == null ? null : ((map['volumeTypeQuota']! as Map).cast<String, String>()).input(),
      volumes: map['volumes'] == null ? null : (map['volumes']! as int).input(),
    );
  }
}

