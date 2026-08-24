// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_rules_result_filter.dart';

class GetFirewallRulesResult {
  /// The action to apply to a matched request. The `log` action is only available on an Enterprise plan.
  /// Available values: "block", "challenge", "js*challenge", "managed*challenge", "allow", "log", "bypass".
  final pulumi.Input<String> action;
  /// An informative summary of the firewall rule.
  final pulumi.Input<String> description;
  final pulumi.Input<GetFirewallRulesResultFilter> filter;
  /// The unique identifier of the firewall rule.
  final pulumi.Input<String> id;
  /// When true, indicates that the firewall rule is currently paused.
  final pulumi.Input<bool> paused;
  /// The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  final pulumi.Input<double> priority;
  final pulumi.Input<List<String>> products;
  /// A short reference tag. Allows you to select related firewall rules.
  final pulumi.Input<String> ref;

  /// Creates a new [GetFirewallRulesResult].
  /// [action] The action to apply to a matched request. The `log` action is only available on an Enterprise plan.
  /// [description] An informative summary of the firewall rule.
  /// [filter] Required.
  /// [id] The unique identifier of the firewall rule.
  /// [paused] When true, indicates that the firewall rule is currently paused.
  /// [priority] The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  /// [products] Required.
  /// [ref] A short reference tag. Allows you to select related firewall rules.
  const GetFirewallRulesResult({
    required this.action,
    required this.description,
    required this.filter,
    required this.id,
    required this.paused,
    required this.priority,
    required this.products,
    required this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'filter': pulumi.Input.mapInputValue<GetFirewallRulesResultFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': id,
      'paused': paused,
      'priority': priority,
      'products': products,
      'ref': ref,
    };
  }

  factory GetFirewallRulesResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallRulesResult(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      filter: pulumi.Input.fromValue(GetFirewallRulesResultFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      products: pulumi.Input.fromValue((map['products'] as List).cast<String>()),
      ref: pulumi.Input.fromValue(map['ref'] as String),
    );
  }
}
