// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_app_cosmos_dbassociation_spring_cloud_app_cosmos_dbassociation_args_doc}
/// The set of arguments for SpringCloudAppCosmosDBAssociation.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_cosmos_dbassociation_spring_cloud_app_cosmos_dbassociation_args_doc}
class SpringCloudAppCosmosDBAssociationArgs {
  /// Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiType;
  /// Specifies the CosmosDB Account access key.
  final pulumi.Input<String> cosmosdbAccessKey;
  /// Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cosmosdbAccountId;
  /// Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `api_type` is `cassandra`.
  final pulumi.Input<String>? cosmosdbCassandraKeyspaceName;
  /// Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  final pulumi.Input<String>? cosmosdbGremlinDatabaseName;
  /// Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  final pulumi.Input<String>? cosmosdbGremlinGraphName;
  /// Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `mongo`.
  final pulumi.Input<String>? cosmosdbMongoDatabaseName;
  /// Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `sql`.
  final pulumi.Input<String>? cosmosdbSqlDatabaseName;
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Creates a new [SpringCloudAppCosmosDBAssociationArgs].
  /// [apiType] Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  /// [cosmosdbAccessKey] Specifies the CosmosDB Account access key.
  /// [cosmosdbAccountId] Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  /// [cosmosdbCassandraKeyspaceName] Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `api_type` is `cassandra`.
  /// [cosmosdbGremlinDatabaseName] Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  /// [cosmosdbGremlinGraphName] Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  /// [cosmosdbMongoDatabaseName] Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `mongo`.
  /// [cosmosdbSqlDatabaseName] Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `sql`.
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [springCloudAppId] Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  SpringCloudAppCosmosDBAssociationArgs({
    required this.apiType,
    required this.cosmosdbAccessKey,
    required this.cosmosdbAccountId,
    this.cosmosdbCassandraKeyspaceName,
    this.cosmosdbGremlinDatabaseName,
    this.cosmosdbGremlinGraphName,
    this.cosmosdbMongoDatabaseName,
    this.cosmosdbSqlDatabaseName,
    this.name,
    required this.springCloudAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': apiType,
      'cosmosdbAccessKey': cosmosdbAccessKey,
      'cosmosdbAccountId': cosmosdbAccountId,
      'cosmosdbCassandraKeyspaceName': ?cosmosdbCassandraKeyspaceName,
      'cosmosdbGremlinDatabaseName': ?cosmosdbGremlinDatabaseName,
      'cosmosdbGremlinGraphName': ?cosmosdbGremlinGraphName,
      'cosmosdbMongoDatabaseName': ?cosmosdbMongoDatabaseName,
      'cosmosdbSqlDatabaseName': ?cosmosdbSqlDatabaseName,
      'name': ?name,
      'springCloudAppId': springCloudAppId,
    };
  }

  factory SpringCloudAppCosmosDBAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppCosmosDBAssociationArgs(
      apiType: (map['apiType'] as String).input(),
      cosmosdbAccessKey: (map['cosmosdbAccessKey'] as String).input(),
      cosmosdbAccountId: (map['cosmosdbAccountId'] as String).input(),
      cosmosdbCassandraKeyspaceName: map['cosmosdbCassandraKeyspaceName'] == null ? null : (map['cosmosdbCassandraKeyspaceName']! as String).input(),
      cosmosdbGremlinDatabaseName: map['cosmosdbGremlinDatabaseName'] == null ? null : (map['cosmosdbGremlinDatabaseName']! as String).input(),
      cosmosdbGremlinGraphName: map['cosmosdbGremlinGraphName'] == null ? null : (map['cosmosdbGremlinGraphName']! as String).input(),
      cosmosdbMongoDatabaseName: map['cosmosdbMongoDatabaseName'] == null ? null : (map['cosmosdbMongoDatabaseName']! as String).input(),
      cosmosdbSqlDatabaseName: map['cosmosdbSqlDatabaseName'] == null ? null : (map['cosmosdbSqlDatabaseName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      springCloudAppId: (map['springCloudAppId'] as String).input(),
    );
  }
}

