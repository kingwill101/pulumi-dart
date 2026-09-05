// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudAppCosmosDBAssociation resources.
class SpringCloudAppCosmosDBAssociationState {
  /// Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? apiType;
  /// Specifies the CosmosDB Account access key.
  final pulumi.Input<String?>? cosmosdbAccessKey;
  /// Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? cosmosdbAccountId;
  /// Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `apiType` is `cassandra`.
  final pulumi.Input<String?>? cosmosdbCassandraKeyspaceName;
  /// Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `apiType` is `gremlin`.
  final pulumi.Input<String?>? cosmosdbGremlinDatabaseName;
  /// Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `apiType` is `gremlin`.
  final pulumi.Input<String?>? cosmosdbGremlinGraphName;
  /// Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `apiType` is `mongo`.
  final pulumi.Input<String?>? cosmosdbMongoDatabaseName;
  /// Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `apiType` is `sql`.
  final pulumi.Input<String?>? cosmosdbSqlDatabaseName;
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? springCloudAppId;

  /// Creates a new [SpringCloudAppCosmosDBAssociationState].
  /// [apiType] Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  /// [cosmosdbAccessKey] Specifies the CosmosDB Account access key.
  /// [cosmosdbAccountId] Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  /// [cosmosdbCassandraKeyspaceName] Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `apiType` is `cassandra`.
  /// [cosmosdbGremlinDatabaseName] Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `apiType` is `gremlin`.
  /// [cosmosdbGremlinGraphName] Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `apiType` is `gremlin`.
  /// [cosmosdbMongoDatabaseName] Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `apiType` is `mongo`.
  /// [cosmosdbSqlDatabaseName] Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `apiType` is `sql`.
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [springCloudAppId] Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  const SpringCloudAppCosmosDBAssociationState({
    this.apiType,
    this.cosmosdbAccessKey,
    this.cosmosdbAccountId,
    this.cosmosdbCassandraKeyspaceName,
    this.cosmosdbGremlinDatabaseName,
    this.cosmosdbGremlinGraphName,
    this.cosmosdbMongoDatabaseName,
    this.cosmosdbSqlDatabaseName,
    this.name,
    this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': ?apiType,
      'cosmosdbAccessKey': ?cosmosdbAccessKey,
      'cosmosdbAccountId': ?cosmosdbAccountId,
      'cosmosdbCassandraKeyspaceName': ?cosmosdbCassandraKeyspaceName,
      'cosmosdbGremlinDatabaseName': ?cosmosdbGremlinDatabaseName,
      'cosmosdbGremlinGraphName': ?cosmosdbGremlinGraphName,
      'cosmosdbMongoDatabaseName': ?cosmosdbMongoDatabaseName,
      'cosmosdbSqlDatabaseName': ?cosmosdbSqlDatabaseName,
      'name': ?name,
      'springCloudAppId': ?springCloudAppId,
    };
  }

  factory SpringCloudAppCosmosDBAssociationState.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppCosmosDBAssociationState(
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbAccessKey: (() { final guardedValue = map['cosmosdbAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbAccountId: (() { final guardedValue = map['cosmosdbAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbCassandraKeyspaceName: (() { final guardedValue = map['cosmosdbCassandraKeyspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbGremlinDatabaseName: (() { final guardedValue = map['cosmosdbGremlinDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbGremlinGraphName: (() { final guardedValue = map['cosmosdbGremlinGraphName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbMongoDatabaseName: (() { final guardedValue = map['cosmosdbMongoDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbSqlDatabaseName: (() { final guardedValue = map['cosmosdbSqlDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudAppId: (() { final guardedValue = map['springCloudAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
