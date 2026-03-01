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
  /// The `inbound_rule` block is documented below.
  final pulumi.Input<List<FirewallInboundRule>>? inboundRules;
  /// The Firewall name
  final pulumi.Input<String>? name;
  /// The outbound access rule block for the Firewall.
  /// The `outbound_rule` block is documented below.
  final pulumi.Input<List<FirewallOutboundRule>>? outboundRules;
  /// An list of object containing the fields, "droplet_id",
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
  /// [pendingChanges] An list of object containing the fields, "droplet_id",
  /// [status] A status string indicating the current state of the Firewall.
  /// [tags] The names of the Tags assigned to the Firewall (max. 5).
  FirewallState({
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<int>>? dropletIds,
    pulumi.Output<List<FirewallInboundRule>>? inboundRules,
    pulumi.Output<String>? name,
    pulumi.Output<List<FirewallOutboundRule>>? outboundRules,
    pulumi.Output<List<FirewallPendingChange>>? pendingChanges,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dropletIds = pulumi.Input.asOptionalInput<List<int>>(dropletIds),
      inboundRules = pulumi.Input.asOptionalInput<List<FirewallInboundRule>>(inboundRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundRules = pulumi.Input.asOptionalInput<List<FirewallOutboundRule>>(outboundRules),
      pendingChanges = pulumi.Input.asOptionalInput<List<FirewallPendingChange>>(pendingChanges),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dropletIds: map['dropletIds'] == null ? null : pulumi.Output.create<List<int>>((map['dropletIds'] as List).cast<int>()),
      inboundRules: map['inboundRules'] == null ? null : pulumi.Output.create<List<FirewallInboundRule>>(pulumi.Input.decodeList<FirewallInboundRule>(map['inboundRules'], (value) => FirewallInboundRule.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundRules: map['outboundRules'] == null ? null : pulumi.Output.create<List<FirewallOutboundRule>>(pulumi.Input.decodeList<FirewallOutboundRule>(map['outboundRules'], (value) => FirewallOutboundRule.fromMap((value as Map).cast<String, dynamic>()))),
      pendingChanges: map['pendingChanges'] == null ? null : pulumi.Output.create<List<FirewallPendingChange>>(pulumi.Input.decodeList<FirewallPendingChange>(map['pendingChanges'], (value) => FirewallPendingChange.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

