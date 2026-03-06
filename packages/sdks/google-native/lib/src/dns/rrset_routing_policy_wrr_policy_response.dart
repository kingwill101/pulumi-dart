// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item_response.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicyResponse {
  final pulumi.Input<List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse>> items;
  final pulumi.Input<String> kind;

  /// Creates a new [RRSetRoutingPolicyWrrPolicyResponse].
  /// [items] Required.
  /// [kind] Required.
  const RRSetRoutingPolicyWrrPolicyResponse({
    required this.items,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
    };
  }

  factory RRSetRoutingPolicyWrrPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyResponse(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse>(map['items']!, (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

