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
  const GetFirewallsResult({
    this.filters,
    required this.firewalls,
    required this.id,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'firewalls': pulumi.Input.encodeList<GetFirewallsFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallsFilter>(guardedValue, (value) => GetFirewallsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      firewalls: pulumi.Input.decodeList<GetFirewallsFirewall>(map['firewalls']!, (value) => GetFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

