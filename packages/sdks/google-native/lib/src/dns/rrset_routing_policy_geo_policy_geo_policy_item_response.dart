// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_health_check_targets_response.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargetsResponse>
  healthCheckedTargets;
  final pulumi.Input<String> kind;

  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final pulumi.Input<String> location;
  final pulumi.Input<List<String>> rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final pulumi.Input<List<String>> signatureRrdatas;

  /// Creates a new [RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse].
  /// [healthCheckedTargets] For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  /// [kind] Required.
  /// [location] The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  /// [rrdatas] Required.
  /// [signatureRrdatas] DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse({
    required this.healthCheckedTargets,
    required this.kind,
    required this.location,
    required this.rrdatas,
    required this.signatureRrdatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets':
          pulumi.Input.mapInputValue<
            RRSetRoutingPolicyHealthCheckTargetsResponse,
            Map<String, dynamic>
          >(healthCheckedTargets, (value) => value.toMap()),
      'kind': kind,
      'location': location,
      'rrdatas': rrdatas,
      'signatureRrdatas': signatureRrdatas,
    };
  }

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse(
      healthCheckedTargets: pulumi.Input.fromValue(
        RRSetRoutingPolicyHealthCheckTargetsResponse.fromMap(
          (map['healthCheckedTargets']! as Map).cast<String, dynamic>(),
        ),
      ),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      rrdatas: pulumi.Input.fromValue((map['rrdatas'] as List).cast<String>()),
      signatureRrdatas: pulumi.Input.fromValue(
        (map['signatureRrdatas'] as List).cast<String>(),
      ),
    );
  }
}
