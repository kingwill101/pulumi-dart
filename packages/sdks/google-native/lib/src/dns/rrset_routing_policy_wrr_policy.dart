// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicy {
  final pulumi.Input<List<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>>? items;
  final pulumi.Input<String>? kind;

  /// Creates a new [RRSetRoutingPolicyWrrPolicy].
  /// [items] Optional.
  /// [kind] Optional.
  RRSetRoutingPolicyWrrPolicy({
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
    };
  }

  factory RRSetRoutingPolicyWrrPolicy.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicy(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>(guardedValue, (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

