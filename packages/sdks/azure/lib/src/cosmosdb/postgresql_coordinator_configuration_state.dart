// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PostgresqlCoordinatorConfiguration resources.
class PostgresqlCoordinatorConfigurationState {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;
  /// The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<String>? value;

  /// Creates a new [PostgresqlCoordinatorConfigurationState].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  /// [name] The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [value] The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  PostgresqlCoordinatorConfigurationState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? value,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'name': ?name,
      'value': ?value,
    };
  }

  factory PostgresqlCoordinatorConfigurationState.fromMap(Map<String, dynamic> map) {
    return PostgresqlCoordinatorConfigurationState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

