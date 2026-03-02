// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_geo.dart';
import 'record_set_routing_policy_primary_backup.dart';
import 'record_set_routing_policy_wrr.dart';

class RecordSetRoutingPolicy {
  /// Specifies whether to enable fencing for geo queries.
  final pulumi.Input<bool>? enableGeoFencing;
  /// The configuration for Geolocation based routing policy.
  /// Structure is documented below.
  final pulumi.Input<List<RecordSetRoutingPolicyGeo>>? geos;
  /// Specifies the health check (used with external endpoints).
  final pulumi.Input<String>? healthCheck;
  /// The configuration for a failover policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy.
  /// Structure is documented below.
  final pulumi.Input<RecordSetRoutingPolicyPrimaryBackup>? primaryBackup;
  /// The configuration for Weighted Round Robin based routing policy.
  /// Structure is documented below.
  final pulumi.Input<List<RecordSetRoutingPolicyWrr>>? wrrs;

  /// Creates a new [RecordSetRoutingPolicy].
  /// [enableGeoFencing] Specifies whether to enable fencing for geo queries.
  /// [geos] The configuration for Geolocation based routing policy.
  /// [healthCheck] Specifies the health check (used with external endpoints).
  /// [primaryBackup] The configuration for a failover policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy.
  /// [wrrs] The configuration for Weighted Round Robin based routing policy.
  RecordSetRoutingPolicy({
    this.enableGeoFencing,
    this.geos,
    this.healthCheck,
    this.primaryBackup,
    this.wrrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableGeoFencing': ?enableGeoFencing,
      'geos': ?pulumi.Input.mapOptionalInputValue<List<RecordSetRoutingPolicyGeo>, List<Map<String, dynamic>>>(geos, (value) => pulumi.Input.encodeList<RecordSetRoutingPolicyGeo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheck': ?healthCheck,
      'primaryBackup': ?pulumi.Input.mapOptionalInputValue<RecordSetRoutingPolicyPrimaryBackup, Map<String, dynamic>>(primaryBackup, (value) => value.toMap()),
      'wrrs': ?pulumi.Input.mapOptionalInputValue<List<RecordSetRoutingPolicyWrr>, List<Map<String, dynamic>>>(wrrs, (value) => pulumi.Input.encodeList<RecordSetRoutingPolicyWrr, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordSetRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicy(
      enableGeoFencing: map['enableGeoFencing'] == null ? null : (map['enableGeoFencing']! as bool).input(),
      geos: map['geos'] == null ? null : (pulumi.Input.decodeList<RecordSetRoutingPolicyGeo>(map['geos']!, (value) => RecordSetRoutingPolicyGeo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck']! as String).input(),
      primaryBackup: map['primaryBackup'] == null ? null : (RecordSetRoutingPolicyPrimaryBackup.fromMap((map['primaryBackup']! as Map).cast<String, dynamic>())).input(),
      wrrs: map['wrrs'] == null ? null : (pulumi.Input.decodeList<RecordSetRoutingPolicyWrr>(map['wrrs']!, (value) => RecordSetRoutingPolicyWrr.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

