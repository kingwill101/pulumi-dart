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
    this.endIpAddress,
    this.mongoClusterId,
    this.name,
    this.startIpAddress,
  });

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
      endIpAddress: map['endIpAddress'] == null ? null : (map['endIpAddress']! as String).input(),
      mongoClusterId: map['mongoClusterId'] == null ? null : (map['mongoClusterId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      startIpAddress: map['startIpAddress'] == null ? null : (map['startIpAddress']! as String).input(),
    );
  }
}

