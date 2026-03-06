// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy.dart';
import 'rrset_routing_policy_health_check_targets.dart';

/// Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.
class RRSetRoutingPolicyPrimaryBackupPolicy {
  /// Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  final pulumi.Input<RRSetRoutingPolicyGeoPolicy>? backupGeoTargets;
  final pulumi.Input<String>? kind;
  /// Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  final pulumi.Input<RRSetRoutingPolicyHealthCheckTargets>? primaryTargets;
  /// When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  final pulumi.Input<double>? trickleTraffic;

  /// Creates a new [RRSetRoutingPolicyPrimaryBackupPolicy].
  /// [backupGeoTargets] Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  /// [kind] Optional.
  /// [primaryTargets] Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  /// [trickleTraffic] When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  const RRSetRoutingPolicyPrimaryBackupPolicy({
    this.backupGeoTargets,
    this.kind,
    this.primaryTargets,
    this.trickleTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGeoTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyGeoPolicy, Map<String, dynamic>>(backupGeoTargets, (value) => value.toMap()),
      'kind': ?kind,
      'primaryTargets': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicyHealthCheckTargets, Map<String, dynamic>>(primaryTargets, (value) => value.toMap()),
      'trickleTraffic': ?trickleTraffic,
    };
  }

  factory RRSetRoutingPolicyPrimaryBackupPolicy.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyPrimaryBackupPolicy(
      backupGeoTargets: (() { final guardedValue = map['backupGeoTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyGeoPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryTargets: (() { final guardedValue = map['primaryTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RRSetRoutingPolicyHealthCheckTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trickleTraffic: (() { final guardedValue = map['trickleTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

