// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_postgresql_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `startIpAddress` and `endIpAddress` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  final pulumi.Input<String> endIpAddress;
  /// Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FirewallRuleArgs].
  /// [endIpAddress] Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [startIpAddress] Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created.
  const FirewallRuleArgs({
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

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
