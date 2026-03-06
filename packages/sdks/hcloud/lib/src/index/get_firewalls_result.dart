// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_firewall.dart';

/// Result data returned by getFirewalls.
class GetFirewallsResult {
  /// (list) List of all matching firewalls. See `data.hcloud_firewall` for schema.
  final List<GetFirewallsFirewall> firewalls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? mostRecent;
  final String? withSelector;

  /// Creates a new [GetFirewallsResult].
  /// [firewalls] (list) List of all matching firewalls. See `data.hcloud_firewall` for schema.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mostRecent] Optional.
  /// [withSelector] Optional.
  const GetFirewallsResult({
    required this.firewalls,
    required this.id,
    this.mostRecent,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewalls': pulumi.Input.encodeList<GetFirewallsFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': id,
      'mostRecent': ?mostRecent,
      'withSelector': ?withSelector,
    };
  }

  factory GetFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallsResult(
      firewalls: pulumi.Input.decodeList<GetFirewallsFirewall>(map['firewalls']!, (value) => GetFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

