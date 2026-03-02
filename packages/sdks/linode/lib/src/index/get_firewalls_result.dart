// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_filter.dart';
import 'get_firewalls_firewall.dart';

/// Result data returned by getFirewalls.
class GetFirewallsResult {
  final List<GetFirewallsFilter>? filters;
  final List<GetFirewallsFirewall> firewalls;
  /// The unique ID assigned to this Firewall.
  final String id;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetFirewallsResult].
  /// [filters] Optional.
  /// [firewalls] Required.
  /// [id] The unique ID assigned to this Firewall.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetFirewallsResult({
    this.filters,
    required this.firewalls,
    required this.id,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetFirewallsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'firewalls': pulumi.Input.encodeList<GetFirewallsFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetFirewallsFilter>(map['filters']!, (value) => GetFirewallsFilter.fromMap((value as Map).cast<String, dynamic>())),
      firewalls: pulumi.Input.decodeList<GetFirewallsFirewall>(map['firewalls'], (value) => GetFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
    );
  }
}

