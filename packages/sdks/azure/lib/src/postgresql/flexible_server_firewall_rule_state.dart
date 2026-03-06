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
  const FlexibleServerFirewallRuleState({
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
      endIpAddress: (() { final guardedValue = map['endIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIpAddress: (() { final guardedValue = map['startIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

