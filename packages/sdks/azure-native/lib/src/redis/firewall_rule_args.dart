// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_redis_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// highest IP address included in the range
  final pulumi.Input<String> endIP;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the firewall rule.
  final pulumi.Input<String>? ruleName;
  /// lowest IP address included in the range
  final pulumi.Input<String> startIP;

  /// Creates a new [FirewallRuleArgs].
  /// [cacheName] The name of the Redis cache.
  /// [endIP] highest IP address included in the range
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The name of the firewall rule.
  /// [startIP] lowest IP address included in the range
  FirewallRuleArgs({
    required pulumi.Output<String> cacheName,
    required pulumi.Output<String> endIP,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleName,
    required pulumi.Output<String> startIP,
  }) :
      cacheName = pulumi.Input.asInput<String>(cacheName),
      endIP = pulumi.Input.asInput<String>(endIP),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      startIP = pulumi.Input.asInput<String>(startIP);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'endIP': endIP,
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'startIP': startIP,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      endIP: pulumi.Output.create<String>(map['endIP'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      startIP: pulumi.Output.create<String>(map['startIP'] as String),
    );
  }
}

