// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PostgresqlFirewallRule resources.
class PostgresqlFirewallRuleState {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;
  /// The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  final pulumi.Input<String>? endIpAddress;
  /// The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [PostgresqlFirewallRuleState].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [endIpAddress] The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  /// [name] The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule.
  PostgresqlFirewallRuleState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? endIpAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? startIpAddress,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      endIpAddress = pulumi.Input.asOptionalInput<String>(endIpAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      startIpAddress = pulumi.Input.asOptionalInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'endIpAddress': ?endIpAddress,
      'name': ?name,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory PostgresqlFirewallRuleState.fromMap(Map<String, dynamic> map) {
    return PostgresqlFirewallRuleState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      endIpAddress: map['endIpAddress'] == null ? null : pulumi.Output.create<String>(map['endIpAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startIpAddress: map['startIpAddress'] == null ? null : pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

