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
  const FirewallRuleState({
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
      endIp: (() { final guardedValue = map['endIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redisCacheName: (() { final guardedValue = map['redisCacheName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIp: (() { final guardedValue = map['startIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

