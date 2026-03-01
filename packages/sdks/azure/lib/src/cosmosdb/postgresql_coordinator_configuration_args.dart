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
  PostgresqlCoordinatorConfigurationArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> value,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
      'value': value,
    };
  }

  factory PostgresqlCoordinatorConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return PostgresqlCoordinatorConfigurationArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

