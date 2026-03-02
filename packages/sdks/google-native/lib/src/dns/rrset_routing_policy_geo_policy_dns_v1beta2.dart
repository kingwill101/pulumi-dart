// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_geo_policy_item_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy that routes based on the geo location of the querying user.
class RRSetRoutingPolicyGeoPolicyDnsV1beta2 {
  /// Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  final pulumi.Input<bool>? enableFencing;
  /// The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  final pulumi.Input<List<RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2>>? items;
  final pulumi.Input<String>? kind;

  /// Creates a new [RRSetRoutingPolicyGeoPolicyDnsV1beta2].
  /// [enableFencing] Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  /// [items] The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  /// [kind] Optional.
  RRSetRoutingPolicyGeoPolicyDnsV1beta2({
    this.enableFencing,
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFencing': ?enableFencing,
      'items': ?pulumi.Input.mapOptionalInputValue<List<RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
    };
  }

  factory RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyDnsV1beta2(
      enableFencing: map['enableFencing'] == null ? null : (map['enableFencing'] as bool).input(),
      items: map['items'] == null ? null : (pulumi.Input.decodeList<RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2>(map['items'], (value) => RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}

