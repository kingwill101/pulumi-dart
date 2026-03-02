// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_dns_v1beta2.dart';
import 'rrset_routing_policy_health_check_targets_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.
class RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2 {
  /// Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  final pulumi.Input<RRSetRoutingPolicyGeoPolicyDnsV1beta2>? backupGeoTargets;
  final pulumi.Input<String>? kind;
  /// Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2>? primaryTargets;
  /// When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  final pulumi.Input<double>? trickleTraffic;

  /// Creates a new [RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2].
  /// [backupGeoTargets] Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  /// [kind] Optional.
  /// [primaryTargets] Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  /// [trickleTraffic] When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2({
    this.backupGeoTargets,
    this.kind,
    this.primaryTargets,
    this.trickleTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGeoTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyGeoPolicyDnsV1beta2, Map<String, dynamic>>(backupGeoTargets, (value) => value.toMap()),
      'kind': ?kind,
      'primaryTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2, Map<String, dynamic>>(primaryTargets, (value) => value.toMap()),
      'trickleTraffic': ?trickleTraffic,
    };
  }

  factory RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2(
      backupGeoTargets: map['backupGeoTargets'] == null ? null : (RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap((map['backupGeoTargets'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      primaryTargets: map['primaryTargets'] == null ? null : (RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2.fromMap((map['primaryTargets'] as Map).cast<String, dynamic>())).input(),
      trickleTraffic: map['trickleTraffic'] == null ? null : (map['trickleTraffic'] as double).input(),
    );
  }
}

