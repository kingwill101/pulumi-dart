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
    pulumi.Output<String>? endIp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? redisCacheName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? startIp,
  }) :
      endIp = pulumi.Input.asOptionalInput<String>(endIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      redisCacheName = pulumi.Input.asOptionalInput<String>(redisCacheName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      startIp = pulumi.Input.asOptionalInput<String>(startIp);

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
      endIp: map['endIp'] == null ? null : pulumi.Output.create<String>(map['endIp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      redisCacheName: map['redisCacheName'] == null ? null : pulumi.Output.create<String>(map['redisCacheName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startIp: map['startIp'] == null ? null : pulumi.Output.create<String>(map['startIp'] as String),
    );
  }
}

