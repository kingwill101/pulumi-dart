// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_health_check_targets.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItem {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargets>? healthCheckedTargets;
  final pulumi.Input<String>? kind;
  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? rrdatas;
  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final pulumi.Input<List<String>>? signatureRrdatas;

  /// Creates a new [RRSetRoutingPolicyGeoPolicyGeoPolicyItem].
  /// [healthCheckedTargets] For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  /// [kind] Optional.
  /// [location] The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  /// [rrdatas] Optional.
  /// [signatureRrdatas] DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  RRSetRoutingPolicyGeoPolicyGeoPolicyItem({
    this.healthCheckedTargets,
    this.kind,
    this.location,
    this.rrdatas,
    this.signatureRrdatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyHealthCheckTargets, Map<String, dynamic>>(healthCheckedTargets, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
    };
  }

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItem(
      healthCheckedTargets: map['healthCheckedTargets'] == null ? null : (RRSetRoutingPolicyHealthCheckTargets.fromMap((map['healthCheckedTargets']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      rrdatas: map['rrdatas'] == null ? null : ((map['rrdatas']! as List).cast<String>()).input(),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : ((map['signatureRrdatas']! as List).cast<String>()).input(),
    );
  }
}

