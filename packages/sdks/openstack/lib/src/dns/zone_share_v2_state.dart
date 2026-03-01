// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneShareV2 resources.
class ZoneShareV2State {
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
  final pulumi.Input<String>? targetProjectId;
  /// The ID of the DNS zone to be shared.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ZoneShareV2State].
  /// [projectId] The ID of the project DNS zone is created for, sets
  /// [region] The region in which to obtain the V2 DNS client. If
  /// [targetProjectId] The ID of the target project with which the
  /// [zoneId] The ID of the DNS zone to be shared.
  ZoneShareV2State({
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetProjectId,
    pulumi.Output<String>? zoneId,
  }) :
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetProjectId = pulumi.Input.asOptionalInput<String>(targetProjectId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'region': ?region,
      'targetProjectId': ?targetProjectId,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneShareV2State.fromMap(Map<String, dynamic> map) {
    return ZoneShareV2State(
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetProjectId: map['targetProjectId'] == null ? null : pulumi.Output.create<String>(map['targetProjectId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

