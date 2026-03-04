// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_inbound_rule.dart';
import 'get_firewall_outbound_rule.dart';
import 'get_firewall_pending_change.dart';

/// Result data returned by getFirewall.
class GetFirewallResult {
  /// A time value given in ISO8601 combined date and time format
  /// that represents when the Firewall was created.
  final String createdAt;

  /// The list of the IDs of the Droplets assigned to
  /// the Firewall.
  final List<int> dropletIds;
  final String firewallId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetFirewallInboundRule> inboundRules;

  /// The name of the Firewall.
  final String name;
  final List<GetFirewallOutboundRule> outboundRules;

  /// A set of object containing the fields, `droplet_id`,
  /// `removing`, and `status`.  It is provided to detail exactly which Droplets
  /// are having their security policies updated.  When empty, all changes
  /// have been successfully applied.
  final List<GetFirewallPendingChange> pendingChanges;

  /// A status string indicating the current state of the Firewall.
  /// This can be "waiting", "succeeded", or "failed".
  final String status;

  /// The names of the Tags assigned to the Firewall.
  final List<String> tags;

  /// Creates a new [GetFirewallResult].
  /// [createdAt] A time value given in ISO8601 combined date and time format
  /// [dropletIds] The list of the IDs of the Droplets assigned to
  /// [firewallId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundRules] Required.
  /// [name] The name of the Firewall.
  /// [outboundRules] Required.
  /// [pendingChanges] A set of object containing the fields, `droplet_id`,
  /// [status] A status string indicating the current state of the Firewall.
  /// [tags] The names of the Tags assigned to the Firewall.
  GetFirewallResult({
    required this.createdAt,
    required this.dropletIds,
    required this.firewallId,
    required this.id,
    required this.inboundRules,
    required this.name,
    required this.outboundRules,
    required this.pendingChanges,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'dropletIds': dropletIds,
      'firewallId': firewallId,
      'id': id,
      'inboundRules':
          pulumi.Input.encodeList<GetFirewallInboundRule, Map<String, dynamic>>(
            inboundRules,
            (value) => value.toMap(),
          ),
      'name': name,
      'outboundRules':
          pulumi.Input.encodeList<
            GetFirewallOutboundRule,
            Map<String, dynamic>
          >(outboundRules, (value) => value.toMap()),
      'pendingChanges':
          pulumi.Input.encodeList<
            GetFirewallPendingChange,
            Map<String, dynamic>
          >(pendingChanges, (value) => value.toMap()),
      'status': status,
      'tags': tags,
    };
  }

  factory GetFirewallResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallResult(
      createdAt: map['createdAt'] as String,
      dropletIds: (map['dropletIds'] as List).cast<int>(),
      firewallId: map['firewallId'] as String,
      id: map['id'] as String,
      inboundRules: pulumi.Input.decodeList<GetFirewallInboundRule>(
        map['inboundRules']!,
        (value) => GetFirewallInboundRule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      outboundRules: pulumi.Input.decodeList<GetFirewallOutboundRule>(
        map['outboundRules']!,
        (value) => GetFirewallOutboundRule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      pendingChanges: pulumi.Input.decodeList<GetFirewallPendingChange>(
        map['pendingChanges']!,
        (value) => GetFirewallPendingChange.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
