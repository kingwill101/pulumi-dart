// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutputCosmosdb resources.
class OutputCosmosdbState {
  /// The authentication mode for the CosmosDB database. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the CosmosDB container.
  final pulumi.Input<String>? containerName;
  /// The account key for the CosmosDB database.
  final pulumi.Input<String>? cosmosdbAccountKey;
  /// The ID of the CosmosDB database.
  final pulumi.Input<String>? cosmosdbSqlDatabaseId;
  /// The name of the field in output events used to specify the primary key which insert or update operations are based on.
  final pulumi.Input<String>? documentId;
  /// The name of the Stream Analytics Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified.
  final pulumi.Input<String>? partitionKey;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobId;

  /// Creates a new [OutputCosmosdbState].
  /// [authenticationMode] The authentication mode for the CosmosDB database. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  /// [containerName] The name of the CosmosDB container.
  /// [cosmosdbAccountKey] The account key for the CosmosDB database.
  /// [cosmosdbSqlDatabaseId] The ID of the CosmosDB database.
  /// [documentId] The name of the field in output events used to specify the primary key which insert or update operations are based on.
  /// [name] The name of the Stream Analytics Output. Changing this forces a new resource to be created.
  /// [partitionKey] The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  const OutputCosmosdbState({
    this.authenticationMode,
    this.containerName,
    this.cosmosdbAccountKey,
    this.cosmosdbSqlDatabaseId,
    this.documentId,
    this.name,
    this.partitionKey,
    this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'containerName': ?containerName,
      'cosmosdbAccountKey': ?cosmosdbAccountKey,
      'cosmosdbSqlDatabaseId': ?cosmosdbSqlDatabaseId,
      'documentId': ?documentId,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
    };
  }

  factory OutputCosmosdbState.fromMap(Map<String, dynamic> map) {
    return OutputCosmosdbState(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbAccountKey: (() { final guardedValue = map['cosmosdbAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cosmosdbSqlDatabaseId: (() { final guardedValue = map['cosmosdbSqlDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentId: (() { final guardedValue = map['documentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobId: (() { final guardedValue = map['streamAnalyticsJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

