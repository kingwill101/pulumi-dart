// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item_response_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2 {
  final pulumi.Input<List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponseDnsV1beta2>> items;
  final pulumi.Input<String> kind;

  /// Creates a new [RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2].
  /// [items] Required.
  /// [kind] Required.
  const RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2({
    required this.items,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponseDnsV1beta2>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponseDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
    };
  }

  factory RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponseDnsV1beta2>(map['items']!, (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

