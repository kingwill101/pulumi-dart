// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_postgresql_coordinator_configuration_postgresql_coordinator_configuration_args_doc}
/// The set of arguments for PostgresqlCoordinatorConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_postgresql_coordinator_configuration_postgresql_coordinator_configuration_args_doc}
class PostgresqlCoordinatorConfigurationArgs {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;
  /// The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<String> value;

  /// Creates a new [PostgresqlCoordinatorConfigurationArgs].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  /// [name] The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [value] The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  const PostgresqlCoordinatorConfigurationArgs({
    required this.clusterId,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
      'value': value,
    };
  }

  factory PostgresqlCoordinatorConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return PostgresqlCoordinatorConfigurationArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
