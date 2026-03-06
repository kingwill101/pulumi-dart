// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysql_flexible_server_firewall_rule_flexible_server_firewall_rule_args_doc}
/// The set of arguments for FlexibleServerFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_mysql_flexible_server_firewall_rule_flexible_server_firewall_rule_args_doc}
class FlexibleServerFirewallRuleArgs {
  /// Specifies the End IP Address associated with this Firewall Rule.
  ///
  /// &gt; **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  final pulumi.Input<String> endIpAddress;
  /// Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// Specifies the Start IP Address associated with this Firewall Rule.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FlexibleServerFirewallRuleArgs].
  /// [endIpAddress] Specifies the End IP Address associated with this Firewall Rule.
  /// [name] Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [startIpAddress] Specifies the Start IP Address associated with this Firewall Rule.
  const FlexibleServerFirewallRuleArgs({
    required this.endIpAddress,
    this.name,
    required this.resourceGroupName,
    required this.serverName,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'startIpAddress': startIpAddress,
    };
  }

  factory FlexibleServerFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerFirewallRuleArgs(
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}

