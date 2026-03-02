// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The highest IP address included in the range.
  final pulumi.Input<String>? endIp;
  /// The name of the Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Redis Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String>? redisCacheName;
  /// The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The lowest IP address included in the range
  final pulumi.Input<String>? startIp;

  /// Creates a new [FirewallRuleState].
  /// [endIp] The highest IP address included in the range.
  /// [name] The name of the Firewall Rule. Changing this forces a new resource to be created.
  /// [redisCacheName] The name of the Redis Cache. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created.
  /// [startIp] The lowest IP address included in the range
  FirewallRuleState({
    this.endIp,
    this.name,
    this.redisCacheName,
    this.resourceGroupName,
    this.startIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': ?endIp,
      'name': ?name,
      'redisCacheName': ?redisCacheName,
      'resourceGroupName': ?resourceGroupName,
      'startIp': ?startIp,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      endIp: map['endIp'] == null ? null : (map['endIp'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      redisCacheName: map['redisCacheName'] == null ? null : (map['redisCacheName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      startIp: map['startIp'] == null ? null : (map['startIp'] as String).input(),
    );
  }
}

