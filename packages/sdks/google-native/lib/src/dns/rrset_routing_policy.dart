// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy.dart';
import 'rrset_routing_policy_primary_backup_policy.dart';
import 'rrset_routing_policy_wrr_policy.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicy {
  final pulumi.Input<RRSetRoutingPolicyGeoPolicy>? geo;
  final pulumi.Input<String>? kind;
  final pulumi.Input<RRSetRoutingPolicyPrimaryBackupPolicy>? primaryBackup;
  final pulumi.Input<RRSetRoutingPolicyWrrPolicy>? wrr;

  /// Creates a new [RRSetRoutingPolicy].
  /// [geo] Optional.
  /// [kind] Optional.
  /// [primaryBackup] Optional.
  /// [wrr] Optional.
  const RRSetRoutingPolicy({
    this.geo,
    this.kind,
    this.primaryBackup,
    this.wrr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geo': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyGeoPolicy, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'kind': ?kind,
      'primaryBackup': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyPrimaryBackupPolicy, Map<String, dynamic>>(primaryBackup, (value) => value.toMap()),
      'wrr': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyWrrPolicy, Map<String, dynamic>>(wrr, (value) => value.toMap()),
    };
  }

  factory RRSetRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicy(
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyGeoPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryBackup: (() { final guardedValue = map['primaryBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyPrimaryBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wrr: (() { final guardedValue = map['wrr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyWrrPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

