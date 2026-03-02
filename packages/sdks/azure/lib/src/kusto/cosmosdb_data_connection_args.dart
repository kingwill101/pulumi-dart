// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_cosmosdb_data_connection_cosmosdb_data_connection_args_doc}
/// The set of arguments for CosmosdbDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_cosmosdb_data_connection_cosmosdb_data_connection_args_doc}
class CosmosdbDataConnectionArgs {
  /// The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String> cosmosdbContainerId;
  /// The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String> kustoDatabaseId;
  /// The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? location;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String> managedIdentityId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? name;
  /// If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String> tableName;

  /// Creates a new [CosmosdbDataConnectionArgs].
  /// [cosmosdbContainerId] The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [kustoDatabaseId] The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [location] The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [managedIdentityId] The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [mappingRuleName] The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [name] The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [retrievalStartDate] If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [tableName] The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created.
  CosmosdbDataConnectionArgs({
    required this.cosmosdbContainerId,
    required this.kustoDatabaseId,
    this.location,
    required this.managedIdentityId,
    this.mappingRuleName,
    this.name,
    this.retrievalStartDate,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosdbContainerId': cosmosdbContainerId,
      'kustoDatabaseId': kustoDatabaseId,
      'location': ?location,
      'managedIdentityId': managedIdentityId,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': tableName,
    };
  }

  factory CosmosdbDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return CosmosdbDataConnectionArgs(
      cosmosdbContainerId: (map['cosmosdbContainerId'] as String).input(),
      kustoDatabaseId: (map['kustoDatabaseId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedIdentityId: (map['managedIdentityId'] as String).input(),
      mappingRuleName: map['mappingRuleName'] == null ? null : (map['mappingRuleName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : (map['retrievalStartDate'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

