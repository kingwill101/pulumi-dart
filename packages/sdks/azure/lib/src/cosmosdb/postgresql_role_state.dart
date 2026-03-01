// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PostgresqlRole resources.
class PostgresqlRoleState {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;

  /// Creates a new [PostgresqlRoleState].
  /// [clusterId] The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  /// [password] The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  PostgresqlRoleState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'name': ?name,
      'password': ?password,
    };
  }

  factory PostgresqlRoleState.fromMap(Map<String, dynamic> map) {
    return PostgresqlRoleState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
    );
  }
}

