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
    this.cosmosdbContainerId,
    this.kustoDatabaseId,
    this.location,
    this.managedIdentityId,
    this.mappingRuleName,
    this.name,
    this.retrievalStartDate,
    this.tableName,
  });

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
      cosmosdbContainerId: (() {
        final guardedValue = map['cosmosdbContainerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kustoDatabaseId: (() {
        final guardedValue = map['kustoDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedIdentityId: (() {
        final guardedValue = map['managedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mappingRuleName: (() {
        final guardedValue = map['mappingRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retrievalStartDate: (() {
        final guardedValue = map['retrievalStartDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
