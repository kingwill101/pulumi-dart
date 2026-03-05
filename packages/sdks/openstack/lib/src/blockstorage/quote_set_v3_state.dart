// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QuoteSetV3 resources.
class QuoteSetV3State {
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
  final pulumi.Input<String>? projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;
  /// Quota value for snapshots. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? snapshots;
  /// Key/Value pairs for setting quota for
  /// volumes types. Possible keys are `snapshots_&lt;volume_type_name&gt;`,
  /// `volumes_&lt;volume_type_name&gt;` and `gigabytes_&lt;volume_type_name&gt;`.
  final pulumi.Input<Map<String, String>>? volumeTypeQuota;
  /// Quota value for volumes. Changing this updates the
  /// existing quotaset.
  final pulumi.Input<int>? volumes;

  /// Creates a new [QuoteSetV3State].
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
  QuoteSetV3State({
    this.backupGigabytes,
    this.backups,
    this.gigabytes,
    this.groups,
    this.perVolumeGigabytes,
    this.projectId,
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
      'projectId': ?projectId,
      'region': ?region,
      'snapshots': ?snapshots,
      'volumeTypeQuota': ?volumeTypeQuota,
      'volumes': ?volumes,
    };
  }

  factory QuoteSetV3State.fromMap(Map<String, dynamic> map) {
    return QuoteSetV3State(
      backupGigabytes: (() { final guardedValue = map['backupGigabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gigabytes: (() { final guardedValue = map['gigabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      perVolumeGigabytes: (() { final guardedValue = map['perVolumeGigabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeTypeQuota: (() { final guardedValue = map['volumeTypeQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

