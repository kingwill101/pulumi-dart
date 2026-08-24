// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_firewall_rules_get_firewall_rules_args_doc}
/// Arguments for getFirewallRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_rules_get_firewall_rules_args_doc}
class GetFirewallRulesArgs {
  /// The action to search for. Must be an exact match.
  final pulumi.Input<String?>? action;
  /// A case-insensitive string to find in the description.
  final pulumi.Input<String?>? description;
  /// The unique identifier of the firewall rule.
  final pulumi.Input<String?>? id;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// When true, indicates that the firewall rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetFirewallRulesArgs].
  /// [action] The action to search for. Must be an exact match.
  /// [description] A case-insensitive string to find in the description.
  /// [id] The unique identifier of the firewall rule.
  /// [maxItems] Max items to fetch, default: 1000
  /// [paused] When true, indicates that the firewall rule is currently paused.
  /// [zoneId] Defines an identifier.
  const GetFirewallRulesArgs({
    this.action,
    this.description,
    this.id,
    this.maxItems,
    this.paused,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'id': ?id,
      'maxItems': ?maxItems,
      'paused': ?paused,
      'zoneId': ?zoneId,
    };
  }

  factory GetFirewallRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRulesArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
