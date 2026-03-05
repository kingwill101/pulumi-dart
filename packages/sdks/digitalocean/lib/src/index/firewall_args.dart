// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_inbound_rule.dart';
import 'firewall_outbound_rule.dart';

/// {@template pulumi_index_firewall_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_firewall_args_doc}
class FirewallArgs {
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
  /// The names of the Tags assigned to the Firewall (max. 5).
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [FirewallArgs].
  /// [dropletIds] The list of the IDs of the Droplets assigned
  /// [inboundRules] The inbound access rule block for the Firewall.
  /// [name] The Firewall name
  /// [outboundRules] The outbound access rule block for the Firewall.
  /// [tags] The names of the Tags assigned to the Firewall (max. 5).
  FirewallArgs({
    this.dropletIds,
    this.inboundRules,
    this.name,
    this.outboundRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletIds': ?dropletIds,
      'inboundRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallInboundRule>, List<Map<String, dynamic>>>(inboundRules, (value) => pulumi.Input.encodeList<FirewallInboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'outboundRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallOutboundRule>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<FirewallOutboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      dropletIds: (() { final guardedValue = map['dropletIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      inboundRules: (() { final guardedValue = map['inboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallInboundRule>(guardedValue, (value) => FirewallInboundRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallOutboundRule>(guardedValue, (value) => FirewallOutboundRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

