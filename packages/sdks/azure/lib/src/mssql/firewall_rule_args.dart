// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_mssql_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The ending IP address to allow through the firewall for this rule.
  ///
  /// > **Note:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)).
  final pulumi.Input<String> endIpAddress;
  /// The name of the firewall rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;
  /// The starting IP address to allow through the firewall for this rule.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FirewallRuleArgs].
  /// [endIpAddress] The ending IP address to allow through the firewall for this rule.
  /// [name] The name of the firewall rule. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The starting IP address to allow through the firewall for this rule.
  FirewallRuleArgs({
    required this.endIpAddress,
    this.name,
    required this.serverId,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'name': ?name,
      'serverId': serverId,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIpAddress: (map['endIpAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      serverId: (map['serverId'] as String).input(),
      startIpAddress: (map['startIpAddress'] as String).input(),
    );
  }
}

