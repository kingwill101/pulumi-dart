// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_inbound_rule.dart';
import 'firewall_outbound_rule.dart';
import 'firewall_pending_change.dart';

/// Input properties used for looking up and filtering Firewall resources.
class FirewallState {
  /// A time value given in ISO8601 combined date and time format
  /// that represents when the Firewall was created.
  final pulumi.Input<String>? createdAt;
  /// The list of the IDs of the Droplets assigned
  /// to the Firewall (max. 10). If you want to assign more droplets to the
  /// Firewall, add Tags to them and use the `tags` argument below.
  final pulumi.Input<List<int>>? dropletIds;
  /// The inbound access rule block for the Firewall.
  /// The `inboundRule` block is documented below.
  final pulumi.Input<List<FirewallInboundRule>>? inboundRules;
  /// The Firewall name
  final pulumi.Input<String>? name;
  /// The outbound access rule block for the Firewall.
  /// The `outboundRule` block is documented below.
  final pulumi.Input<List<FirewallOutboundRule>>? outboundRules;
  /// An list of object containing the fields, "dropletId",
  /// "removing", and "status".  It is provided to detail exactly which Droplets
  /// are having their security policies updated.  When empty, all changes
  /// have been successfully applied.
  final pulumi.Input<List<FirewallPendingChange>>? pendingChanges;
  /// A status string indicating the current state of the Firewall.
  /// This can be "waiting", "succeeded", or "failed".
  final pulumi.Input<String>? status;
  /// The names of the Tags assigned to the Firewall (max. 5).
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [FirewallState].
  /// [createdAt] A time value given in ISO8601 combined date and time format
  /// [dropletIds] The list of the IDs of the Droplets assigned
  /// [inboundRules] The inbound access rule block for the Firewall.
  /// [name] The Firewall name
  /// [outboundRules] The outbound access rule block for the Firewall.
  /// [pendingChanges] An list of object containing the fields, "dropletId",
  /// [status] A status string indicating the current state of the Firewall.
  /// [tags] The names of the Tags assigned to the Firewall (max. 5).
  const FirewallState({
    this.createdAt,
    this.dropletIds,
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
      'inboundRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallInboundRule>, List<Map<String, dynamic>>>(inboundRules, (value) => pulumi.Input.encodeList<FirewallInboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'outboundRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallOutboundRule>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<FirewallOutboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pendingChanges': ?pulumi.Input.mapOptionalInputValue<List<FirewallPendingChange>, List<Map<String, dynamic>>>(pendingChanges, (value) => pulumi.Input.encodeList<FirewallPendingChange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory FirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dropletIds: (() { final guardedValue = map['dropletIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      inboundRules: (() { final guardedValue = map['inboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallInboundRule>(guardedValue, (value) => FirewallInboundRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallOutboundRule>(guardedValue, (value) => FirewallOutboundRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pendingChanges: (() { final guardedValue = map['pendingChanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPendingChange>(guardedValue, (value) => FirewallPendingChange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
