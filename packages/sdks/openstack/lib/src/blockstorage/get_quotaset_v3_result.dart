// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQuotasetV3.
class GetQuotasetV3Result {
  /// The size (GB) of backups that are allowed.
  final int backupGigabytes;
  /// The number of backups that are allowed.
  final int backups;
  /// The size (GB) of volumes and snapshots that are allowed.
  final int gigabytes;
  /// The number of groups that are allowed.
  final int groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The size (GB) of volumes that are allowed for each volume.
  final int perVolumeGigabytes;
  /// See Argument Reference above.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// The number of snapshots that are allowed.
  final int snapshots;
  /// Map with gigabytes_{volume_type}, snapshots_{volume_type}, volumes_{volume_type} for each volume type.
  final Map<String, String> volumeTypeQuota;
  /// The number of volumes that are allowed.
  final int volumes;

  /// Creates a new [GetQuotasetV3Result].
  /// [backupGigabytes] The size (GB) of backups that are allowed.
  /// [backups] The number of backups that are allowed.
  /// [gigabytes] The size (GB) of volumes and snapshots that are allowed.
  /// [groups] The number of groups that are allowed.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [perVolumeGigabytes] The size (GB) of volumes that are allowed for each volume.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [snapshots] The number of snapshots that are allowed.
  /// [volumeTypeQuota] Map with gigabytes_{volume_type}, snapshots_{volume_type}, volumes_{volume_type} for each volume type.
  /// [volumes] The number of volumes that are allowed.
  const GetQuotasetV3Result({
    required this.backupGigabytes,
    required this.backups,
    required this.gigabytes,
    required this.groups,
    required this.id,
    required this.perVolumeGigabytes,
    required this.projectId,
    required this.region,
    required this.snapshots,
    required this.volumeTypeQuota,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGigabytes': backupGigabytes,
      'backups': backups,
      'gigabytes': gigabytes,
      'groups': groups,
      'id': id,
      'perVolumeGigabytes': perVolumeGigabytes,
      'projectId': projectId,
      'region': region,
      'snapshots': snapshots,
      'volumeTypeQuota': volumeTypeQuota,
      'volumes': volumes,
    };
  }

  factory GetQuotasetV3Result.fromMap(Map<String, dynamic> map) {
    return GetQuotasetV3Result(
      backupGigabytes: map['backupGigabytes'] as int,
      backups: map['backups'] as int,
      gigabytes: map['gigabytes'] as int,
      groups: map['groups'] as int,
      id: map['id'] as String,
      perVolumeGigabytes: map['perVolumeGigabytes'] as int,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      snapshots: map['snapshots'] as int,
      volumeTypeQuota: (map['volumeTypeQuota'] as Map).cast<String, String>(),
      volumes: map['volumes'] as int,
    );
  }
}

