// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_zone_share_v2_get_zone_share_v2_args_doc}
/// Arguments for getZoneShareV2.
/// {@endtemplate}
/// {@macro pulumi_dns_get_zone_share_v2_get_zone_share_v2_args_doc}
class GetZoneShareV2Args {
  /// If set to `true`, the data source will search
  /// across all projects. If set to `false`, it will only search within the
  /// current project. Defaults to `false`.
  final pulumi.Input<String>? allProjects;
  /// The owner project ID. If omitted, it is derived
  /// from the zone share details.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 DNS client. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new DNS zone share data source.
  final pulumi.Input<String>? region;
  /// The ID of the DNS zone share to retrieve. If
  /// provided, the data source returns only the share with this ID.
  final pulumi.Input<String>? shareId;
  /// If provided, the data source returns the
  /// share with this target project ID.
  final pulumi.Input<String>? targetProjectId;
  /// The ID of the DNS zone for which to get share.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZoneShareV2Args].
  /// [allProjects] If set to `true`, the data source will search
  /// [projectId] The owner project ID. If omitted, it is derived
  /// [region] The region in which to obtain the V2 DNS client. If
  /// [shareId] The ID of the DNS zone share to retrieve. If
  /// [targetProjectId] If provided, the data source returns the
  /// [zoneId] The ID of the DNS zone for which to get share.
  GetZoneShareV2Args({
    this.allProjects,
    this.projectId,
    this.region,
    this.shareId,
    this.targetProjectId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allProjects': ?allProjects,
      'projectId': ?projectId,
      'region': ?region,
      'shareId': ?shareId,
      'targetProjectId': ?targetProjectId,
      'zoneId': zoneId,
    };
  }

  factory GetZoneShareV2Args.fromMap(Map<String, dynamic> map) {
    return GetZoneShareV2Args(
      allProjects: map['allProjects'] == null ? null : (map['allProjects'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shareId: map['shareId'] == null ? null : (map['shareId'] as String).input(),
      targetProjectId: map['targetProjectId'] == null ? null : (map['targetProjectId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

