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
  PostgresqlFirewallRuleArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> endIpAddress,
    pulumi.Output<String>? name,
    required pulumi.Output<String> startIpAddress,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

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
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      endIpAddress: pulumi.Output.create<String>(map['endIpAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startIpAddress: pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

