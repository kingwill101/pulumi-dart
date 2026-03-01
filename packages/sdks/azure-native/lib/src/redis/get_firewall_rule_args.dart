// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_firewall_rule_args_doc}
/// Arguments for getFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_redis_get_firewall_rule_args_doc}
class GetFirewallRuleArgs {
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the firewall rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetFirewallRuleArgs].
  /// [cacheName] The name of the Redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The name of the firewall rule.
  GetFirewallRuleArgs({
    required pulumi.Output<String> cacheName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleName,
  }) :
      cacheName = pulumi.Input.asInput<String>(cacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
    };
  }

  factory GetFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleArgs(
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

