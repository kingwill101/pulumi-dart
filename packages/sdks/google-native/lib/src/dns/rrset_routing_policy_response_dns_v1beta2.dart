// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_response_dns_v1beta2.dart';
import 'rrset_routing_policy_primary_backup_policy_response_dns_v1beta2.dart';
import 'rrset_routing_policy_wrr_policy_response_dns_v1beta2.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyResponseDnsV1beta2 {
  final pulumi.Input<RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2> geo;
  final pulumi.Input<RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2> geoPolicy;
  final pulumi.Input<String> kind;
  final pulumi.Input<RRSetRoutingPolicyPrimaryBackupPolicyResponseDnsV1beta2> primaryBackup;
  final pulumi.Input<RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2> wrr;
  final pulumi.Input<RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2> wrrPolicy;

  /// Creates a new [RRSetRoutingPolicyResponseDnsV1beta2].
  /// [geo] Required.
  /// [geoPolicy] Required.
  /// [kind] Required.
  /// [primaryBackup] Required.
  /// [wrr] Required.
  /// [wrrPolicy] Required.
  const RRSetRoutingPolicyResponseDnsV1beta2({
    required this.geo,
    required this.geoPolicy,
    required this.kind,
    required this.primaryBackup,
    required this.wrr,
    required this.wrrPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geo': pulumi.Input.mapInputValue<RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'geoPolicy': pulumi.Input.mapInputValue<RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2, Map<String, dynamic>>(geoPolicy, (value) => value.toMap()),
      'kind': kind,
      'primaryBackup': pulumi.Input.mapInputValue<RRSetRoutingPolicyPrimaryBackupPolicyResponseDnsV1beta2, Map<String, dynamic>>(primaryBackup, (value) => value.toMap()),
      'wrr': pulumi.Input.mapInputValue<RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2, Map<String, dynamic>>(wrr, (value) => value.toMap()),
      'wrrPolicy': pulumi.Input.mapInputValue<RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2, Map<String, dynamic>>(wrrPolicy, (value) => value.toMap()),
    };
  }

  factory RRSetRoutingPolicyResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyResponseDnsV1beta2(
      geo: pulumi.Input.fromValue(RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      geoPolicy: pulumi.Input.fromValue(RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2.fromMap((map['geoPolicy']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      primaryBackup: pulumi.Input.fromValue(RRSetRoutingPolicyPrimaryBackupPolicyResponseDnsV1beta2.fromMap((map['primaryBackup']! as Map).cast<String, dynamic>())),
      wrr: pulumi.Input.fromValue(RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2.fromMap((map['wrr']! as Map).cast<String, dynamic>())),
      wrrPolicy: pulumi.Input.fromValue(RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2.fromMap((map['wrrPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}

