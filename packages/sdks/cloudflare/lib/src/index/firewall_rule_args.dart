// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_action.dart';
import 'firewall_rule_filter.dart';

/// {@template pulumi_index_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final pulumi.Input<FirewallRuleAction> action;
  final pulumi.Input<FirewallRuleFilter> filter;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [FirewallRuleArgs].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [filter] Required.
  /// [zoneId] Defines an identifier.
  const FirewallRuleArgs({
    required this.action,
    required this.filter,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<FirewallRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'filter': pulumi.Input.mapInputValue<FirewallRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      action: pulumi.Input.fromValue(FirewallRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      filter: pulumi.Input.fromValue(FirewallRuleFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
