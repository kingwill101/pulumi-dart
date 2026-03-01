// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicyDnsV1beta2 {
  final List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2>? items;
  final String? kind;

  /// Creates a new [RRSetRoutingPolicyWrrPolicyDnsV1beta2].
  /// [items] Optional.
  /// [kind] Optional.
  RRSetRoutingPolicyWrrPolicyDnsV1beta2({
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'kind': ?kind,
    };
  }

  factory RRSetRoutingPolicyWrrPolicyDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyDnsV1beta2(
      items: map['items'] == null ? null : pulumi.Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2>(map['items'], (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}

