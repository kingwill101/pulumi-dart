// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_health_check_targets_dns_v1beta2.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2 {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2>? healthCheckedTargets;
  final pulumi.Input<String>? kind;
  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? rrdatas;
  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final pulumi.Input<List<String>>? signatureRrdatas;

  /// Creates a new [RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2].
  /// [healthCheckedTargets] For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  /// [kind] Optional.
  /// [location] The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  /// [rrdatas] Optional.
  /// [signatureRrdatas] DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  const RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2({
    this.healthCheckedTargets,
    this.kind,
    this.location,
    this.rrdatas,
    this.signatureRrdatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2, Map<String, dynamic>>(healthCheckedTargets, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
    };
  }

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2(
      healthCheckedTargets: (() { final guardedValue = map['healthCheckedTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rrdatas: (() { final guardedValue = map['rrdatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signatureRrdatas: (() { final guardedValue = map['signatureRrdatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

