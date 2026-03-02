// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PostgresqlNodeConfiguration resources.
class PostgresqlNodeConfigurationState {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;
  /// The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<String>? value;

  /// Creates a new [PostgresqlNodeConfigurationState].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  /// [name] The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [value] The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  PostgresqlNodeConfigurationState({
    this.clusterId,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'name': ?name,
      'value': ?value,
    };
  }

  factory PostgresqlNodeConfigurationState.fromMap(Map<String, dynamic> map) {
    return PostgresqlNodeConfigurationState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

