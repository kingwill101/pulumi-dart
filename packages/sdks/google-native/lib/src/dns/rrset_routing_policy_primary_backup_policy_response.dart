// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_response.dart';
import 'rrset_routing_policy_health_check_targets_response.dart';

/// Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.
class RRSetRoutingPolicyPrimaryBackupPolicyResponse {
  /// Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  final RRSetRoutingPolicyGeoPolicyResponse backupGeoTargets;
  final String kind;
  /// Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  final RRSetRoutingPolicyHealthCheckTargetsResponse primaryTargets;
  /// When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  final double trickleTraffic;

  /// Creates a new [RRSetRoutingPolicyPrimaryBackupPolicyResponse].
  /// [backupGeoTargets] Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  /// [kind] Required.
  /// [primaryTargets] Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  /// [trickleTraffic] When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  RRSetRoutingPolicyPrimaryBackupPolicyResponse({
    required this.backupGeoTargets,
    required this.kind,
    required this.primaryTargets,
    required this.trickleTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGeoTargets': backupGeoTargets.toMap(),
      'kind': kind,
      'primaryTargets': primaryTargets.toMap(),
      'trickleTraffic': trickleTraffic,
    };
  }

  factory RRSetRoutingPolicyPrimaryBackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyPrimaryBackupPolicyResponse(
      backupGeoTargets: RRSetRoutingPolicyGeoPolicyResponse.fromMap((map['backupGeoTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      primaryTargets: RRSetRoutingPolicyHealthCheckTargetsResponse.fromMap((map['primaryTargets'] as Map).cast<String, dynamic>()),
      trickleTraffic: map['trickleTraffic'] as double,
    );
  }
}

