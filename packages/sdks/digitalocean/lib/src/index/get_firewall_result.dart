// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_inbound_rule.dart';
import 'get_firewall_outbound_rule.dart';
import 'get_firewall_pending_change.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// A time value given in ISO8601 combined date and time format
  /// that represents when the Firewall was created.
  final String? createdAt;
  /// The list of the IDs of the Droplets assigned to
  /// the Firewall.
  final List<int>? dropletIds;
  final String? firewallId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetFirewallInboundRule>? inboundRules;
  /// The name of the Firewall.
  final String? name;
  final List<GetFirewallOutboundRule>? outboundRules;
  /// A set of object containing the fields, `dropletId`,
  /// `removing`, and `status`.  It is provided to detail exactly which Droplets
  /// are having their security policies updated.  When empty, all changes
  /// have been successfully applied.
  final List<GetFirewallPendingChange>? pendingChanges;
  /// A status string indicating the current state of the Firewall.
  /// This can be "waiting", "succeeded", or "failed".
  final String? status;
  /// The names of the Tags assigned to the Firewall.
  final List<String>? tags;

  /// Creates a new [GetFirewallResult].
  /// [createdAt] A time value given in ISO8601 combined date and time format
  /// [dropletIds] The list of the IDs of the Droplets assigned to
  /// [firewallId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundRules] Optional.
  /// [name] The name of the Firewall.
  /// [outboundRules] Optional.
  /// [pendingChanges] A set of object containing the fields, `dropletId`,
  /// [status] A status string indicating the current state of the Firewall.
  /// [tags] The names of the Tags assigned to the Firewall.
  const GetFirewallResult({
    this.createdAt,
    this.dropletIds,
    this.firewallId,
    this.id,
    this.inboundRules,
    this.name,
    this.outboundRules,
    this.pendingChanges,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'dropletIds': ?dropletIds,
      'firewallId': ?firewallId,
      'id': ?id,
      'inboundRules': ?(() { final guardedValue = inboundRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallInboundRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'outboundRules': ?(() { final guardedValue = outboundRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallOutboundRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pendingChanges': ?(() { final guardedValue = pendingChanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFirewallPendingChange, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dropletIds: (() { final guardedValue = map['dropletIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundRules: (() { final guardedValue = map['inboundRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallInboundRule>(guardedValue, (value) => GetFirewallInboundRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallOutboundRule>(guardedValue, (value) => GetFirewallOutboundRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      pendingChanges: (() { final guardedValue = map['pendingChanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFirewallPendingChange>(guardedValue, (value) => GetFirewallPendingChange.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
