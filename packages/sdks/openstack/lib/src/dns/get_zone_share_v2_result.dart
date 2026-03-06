// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneShareV2.
class GetZoneShareV2Result {
  /// See Argument Reference above.
  final String? allProjects;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String? projectId;
  /// See Argument Reference above.
  final String region;
  /// The ID of the zone share.
  final String shareId;
  /// See Argument Reference above.
  final String? targetProjectId;
  /// See Argument Reference above.
  final String zoneId;

  /// Creates a new [GetZoneShareV2Result].
  /// [allProjects] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [shareId] The ID of the zone share.
  /// [targetProjectId] See Argument Reference above.
  /// [zoneId] See Argument Reference above.
  const GetZoneShareV2Result({
    this.allProjects,
    required this.id,
    this.projectId,
    required this.region,
    required this.shareId,
    this.targetProjectId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allProjects': ?allProjects,
      'id': id,
      'projectId': ?projectId,
      'region': region,
      'shareId': shareId,
      'targetProjectId': ?targetProjectId,
      'zoneId': zoneId,
    };
  }

  factory GetZoneShareV2Result.fromMap(Map<String, dynamic> map) {
    return GetZoneShareV2Result(
      allProjects: (() { final guardedValue = map['allProjects']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      shareId: map['shareId'] as String,
      targetProjectId: (() { final guardedValue = map['targetProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: map['zoneId'] as String,
    );
  }
}

