// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CosmosdbDataConnection resources.
class CosmosdbDataConnectionState {
  /// The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? cosmosdbContainerId;
  /// The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? kustoDatabaseId;
  /// The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? location;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? managedIdentityId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? name;
  /// If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created.
  final pulumi.Input<String>? tableName;

  /// Creates a new [CosmosdbDataConnectionState].
  /// [cosmosdbContainerId] The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [kustoDatabaseId] The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [location] The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [managedIdentityId] The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [mappingRuleName] The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [name] The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [retrievalStartDate] If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created.
  /// [tableName] The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created.
  CosmosdbDataConnectionState({
    pulumi.Output<String>? cosmosdbContainerId,
    pulumi.Output<String>? kustoDatabaseId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedIdentityId,
    pulumi.Output<String>? mappingRuleName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? retrievalStartDate,
    pulumi.Output<String>? tableName,
  }) :
      cosmosdbContainerId = pulumi.Input.asOptionalInput<String>(cosmosdbContainerId),
      kustoDatabaseId = pulumi.Input.asOptionalInput<String>(kustoDatabaseId),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedIdentityId = pulumi.Input.asOptionalInput<String>(managedIdentityId),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      name = pulumi.Input.asOptionalInput<String>(name),
      retrievalStartDate = pulumi.Input.asOptionalInput<String>(retrievalStartDate),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosdbContainerId': ?cosmosdbContainerId,
      'kustoDatabaseId': ?kustoDatabaseId,
      'location': ?location,
      'managedIdentityId': ?managedIdentityId,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': ?tableName,
    };
  }

  factory CosmosdbDataConnectionState.fromMap(Map<String, dynamic> map) {
    return CosmosdbDataConnectionState(
      cosmosdbContainerId: map['cosmosdbContainerId'] == null ? null : pulumi.Output.create<String>(map['cosmosdbContainerId'] as String),
      kustoDatabaseId: map['kustoDatabaseId'] == null ? null : pulumi.Output.create<String>(map['kustoDatabaseId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedIdentityId: map['managedIdentityId'] == null ? null : pulumi.Output.create<String>(map['managedIdentityId'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : pulumi.Output.create<String>(map['retrievalStartDate'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

