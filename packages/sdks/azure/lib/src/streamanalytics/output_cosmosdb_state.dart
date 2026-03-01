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
  OutputCosmosdbState({
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? containerName,
    pulumi.Output<String>? cosmosdbAccountKey,
    pulumi.Output<String>? cosmosdbSqlDatabaseId,
    pulumi.Output<String>? documentId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partitionKey,
    pulumi.Output<String>? streamAnalyticsJobId,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      cosmosdbAccountKey = pulumi.Input.asOptionalInput<String>(cosmosdbAccountKey),
      cosmosdbSqlDatabaseId = pulumi.Input.asOptionalInput<String>(cosmosdbSqlDatabaseId),
      documentId = pulumi.Input.asOptionalInput<String>(documentId),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      streamAnalyticsJobId = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobId);

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
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      containerName: map['containerName'] == null ? null : pulumi.Output.create<String>(map['containerName'] as String),
      cosmosdbAccountKey: map['cosmosdbAccountKey'] == null ? null : pulumi.Output.create<String>(map['cosmosdbAccountKey'] as String),
      cosmosdbSqlDatabaseId: map['cosmosdbSqlDatabaseId'] == null ? null : pulumi.Output.create<String>(map['cosmosdbSqlDatabaseId'] as String),
      documentId: map['documentId'] == null ? null : pulumi.Output.create<String>(map['documentId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionKey: map['partitionKey'] == null ? null : pulumi.Output.create<String>(map['partitionKey'] as String),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobId'] as String),
    );
  }
}

