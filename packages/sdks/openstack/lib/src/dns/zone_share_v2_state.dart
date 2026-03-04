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
    this.projectId,
    this.region,
    this.targetProjectId,
    this.zoneId,
  });

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
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetProjectId: (() {
        final guardedValue = map['targetProjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
