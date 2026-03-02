// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerFirewallRule resources.
class FlexibleServerFirewallRuleState {
  /// The IPv4 Address defining the end of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  final pulumi.Input<String>? endIpAddress;
  /// The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  final pulumi.Input<String>? name;
  /// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  final pulumi.Input<String>? serverId;
  /// The IPv4 Address defining the start of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FlexibleServerFirewallRuleState].
  /// [endIpAddress] The IPv4 Address defining the end of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  /// [name] The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  /// [serverId] The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  /// [startIpAddress] The IPv4 Address defining the start of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  FlexibleServerFirewallRuleState({
    this.endIpAddress,
    this.name,
    this.serverId,
    this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'name': ?name,
      'serverId': ?serverId,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FlexibleServerFirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerFirewallRuleState(
      endIpAddress: map['endIpAddress'] == null ? null : (map['endIpAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as String).input(),
      startIpAddress: map['startIpAddress'] == null ? null : (map['startIpAddress'] as String).input(),
    );
  }
}

