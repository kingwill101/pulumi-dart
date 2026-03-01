// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_zone_share_v2_zone_share_v2_args_doc}
/// The set of arguments for ZoneShareV2.
/// {@endtemplate}
/// {@macro pulumi_dns_zone_share_v2_zone_share_v2_args_doc}
class ZoneShareV2Args {
  /// The ID of the project DNS zone is created for, sets
  /// `X-Auth-Sudo-Tenant-ID` header (requires an assigned user role in target
  /// project).
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 DNS client. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new DNS zone share.
  final pulumi.Input<String>? region;
  /// The ID of the target project with which the
  /// DNS zone will be shared.
  final pulumi.Input<String> targetProjectId;
  /// The ID of the DNS zone to be shared.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneShareV2Args].
  /// [projectId] The ID of the project DNS zone is created for, sets
  /// [region] The region in which to obtain the V2 DNS client. If
  /// [targetProjectId] The ID of the target project with which the
  /// [zoneId] The ID of the DNS zone to be shared.
  ZoneShareV2Args({
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> targetProjectId,
    required pulumi.Output<String> zoneId,
  }) :
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetProjectId = pulumi.Input.asInput<String>(targetProjectId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'region': ?region,
      'targetProjectId': targetProjectId,
      'zoneId': zoneId,
    };
  }

  factory ZoneShareV2Args.fromMap(Map<String, dynamic> map) {
    return ZoneShareV2Args(
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetProjectId: pulumi.Output.create<String>(map['targetProjectId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

