// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_dns_v1beta2.dart';
import 'rrset_routing_policy_primary_backup_policy_dns_v1beta2.dart';
import 'rrset_routing_policy_wrr_policy_dns_v1beta2.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyDnsV1beta2 {
  final pulumi.Input<RRSetRoutingPolicyGeoPolicyDnsV1beta2>? geo;
  final pulumi.Input<RRSetRoutingPolicyGeoPolicyDnsV1beta2>? geoPolicy;
  final pulumi.Input<String>? kind;
  final pulumi.Input<RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2>? primaryBackup;
  final pulumi.Input<RRSetRoutingPolicyWrrPolicyDnsV1beta2>? wrr;
  final pulumi.Input<RRSetRoutingPolicyWrrPolicyDnsV1beta2>? wrrPolicy;

  /// Creates a new [RRSetRoutingPolicyDnsV1beta2].
  /// [geo] Optional.
  /// [geoPolicy] Optional.
  /// [kind] Optional.
  /// [primaryBackup] Optional.
  /// [wrr] Optional.
  /// [wrrPolicy] Optional.
  RRSetRoutingPolicyDnsV1beta2({
    this.geo,
    this.geoPolicy,
    this.kind,
    this.primaryBackup,
    this.wrr,
    this.wrrPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geo': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyGeoPolicyDnsV1beta2, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'geoPolicy': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyGeoPolicyDnsV1beta2, Map<String, dynamic>>(geoPolicy, (value) => value.toMap()),
      'kind': ?kind,
      'primaryBackup': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2, Map<String, dynamic>>(primaryBackup, (value) => value.toMap()),
      'wrr': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyWrrPolicyDnsV1beta2, Map<String, dynamic>>(wrr, (value) => value.toMap()),
      'wrrPolicy': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyWrrPolicyDnsV1beta2, Map<String, dynamic>>(wrrPolicy, (value) => value.toMap()),
    };
  }

  factory RRSetRoutingPolicyDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyDnsV1beta2(
      geo: map['geo'] == null ? null : (RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap((map['geo'] as Map).cast<String, dynamic>())).input(),
      geoPolicy: map['geoPolicy'] == null ? null : (RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap((map['geoPolicy'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      primaryBackup: map['primaryBackup'] == null ? null : (RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2.fromMap((map['primaryBackup'] as Map).cast<String, dynamic>())).input(),
      wrr: map['wrr'] == null ? null : (RRSetRoutingPolicyWrrPolicyDnsV1beta2.fromMap((map['wrr'] as Map).cast<String, dynamic>())).input(),
      wrrPolicy: map['wrrPolicy'] == null ? null : (RRSetRoutingPolicyWrrPolicyDnsV1beta2.fromMap((map['wrrPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

