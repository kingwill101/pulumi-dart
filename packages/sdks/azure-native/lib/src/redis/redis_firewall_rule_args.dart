// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_redis_firewall_rule_args_doc}
/// The set of arguments for RedisFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_redis_redis_firewall_rule_args_doc}
class RedisFirewallRuleArgs {
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// highest IP address included in the range
  final pulumi.Input<String> endIP;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the firewall rule.
  final pulumi.Input<String>? ruleName;
  /// lowest IP address included in the range
  final pulumi.Input<String> startIP;

  /// Creates a new [RedisFirewallRuleArgs].
  /// [cacheName] The name of the Redis cache.
  /// [endIP] highest IP address included in the range
  /// [resourceGroupName] The name of the resource group.
  /// [ruleName] The name of the firewall rule.
  /// [startIP] lowest IP address included in the range
  RedisFirewallRuleArgs({
    required this.cacheName,
    required this.endIP,
    required this.resourceGroupName,
    this.ruleName,
    required this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'endIP': endIP,
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'startIP': startIP,
    };
  }

  factory RedisFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return RedisFirewallRuleArgs(
      cacheName: (map['cacheName'] as String).input(),
      endIP: (map['endIP'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      startIP: (map['startIP'] as String).input(),
    );
  }
}

