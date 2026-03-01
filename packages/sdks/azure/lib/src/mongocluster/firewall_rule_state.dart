// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The end IP address of the Mongo Cluster Firewall Rule.
  final pulumi.Input<String>? endIpAddress;
  /// The ID of the Mongo Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mongoClusterId;
  /// The name of the Mongo Cluster Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The start IP address of the Mongo Cluster Firewall Rule.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FirewallRuleState].
  /// [endIpAddress] The end IP address of the Mongo Cluster Firewall Rule.
  /// [mongoClusterId] The ID of the Mongo Cluster. Changing this forces a new resource to be created.
  /// [name] The name of the Mongo Cluster Firewall Rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The start IP address of the Mongo Cluster Firewall Rule.
  FirewallRuleState({
    pulumi.Output<String>? endIpAddress,
    pulumi.Output<String>? mongoClusterId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asOptionalInput<String>(endIpAddress),
      mongoClusterId = pulumi.Input.asOptionalInput<String>(mongoClusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      startIpAddress = pulumi.Input.asOptionalInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'mongoClusterId': ?mongoClusterId,
      'name': ?name,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      endIpAddress: map['endIpAddress'] == null ? null : pulumi.Output.create<String>(map['endIpAddress'] as String),
      mongoClusterId: map['mongoClusterId'] == null ? null : pulumi.Output.create<String>(map['mongoClusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startIpAddress: map['startIpAddress'] == null ? null : pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

