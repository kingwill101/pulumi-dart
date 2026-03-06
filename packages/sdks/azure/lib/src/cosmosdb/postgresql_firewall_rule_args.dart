// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_postgresql_firewall_rule_postgresql_firewall_rule_args_doc}
/// The set of arguments for PostgresqlFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_postgresql_firewall_rule_postgresql_firewall_rule_args_doc}
class PostgresqlFirewallRuleArgs {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;
  /// The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  final pulumi.Input<String> endIpAddress;
  /// The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [PostgresqlFirewallRuleArgs].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [endIpAddress] The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  /// [name] The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  const PostgresqlFirewallRuleArgs({
    required this.clusterId,
    required this.endIpAddress,
    this.name,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'endIpAddress': endIpAddress,
      'name': ?name,
      'startIpAddress': startIpAddress,
    };
  }

  factory PostgresqlFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return PostgresqlFirewallRuleArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}

