// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_output_cosmosdb_output_cosmosdb_args_doc}
/// The set of arguments for OutputCosmosdb.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_cosmosdb_output_cosmosdb_args_doc}
class OutputCosmosdbArgs {
  /// The authentication mode for the CosmosDB database. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the CosmosDB container.
  final pulumi.Input<String> containerName;
  /// The account key for the CosmosDB database.
  final pulumi.Input<String> cosmosdbAccountKey;
  /// The ID of the CosmosDB database.
  final pulumi.Input<String> cosmosdbSqlDatabaseId;
  /// The name of the field in output events used to specify the primary key which insert or update operations are based on.
  final pulumi.Input<String>? documentId;
  /// The name of the Stream Analytics Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified.
  final pulumi.Input<String>? partitionKey;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobId;

  /// Creates a new [OutputCosmosdbArgs].
  /// [authenticationMode] The authentication mode for the CosmosDB database. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  /// [containerName] The name of the CosmosDB container.
  /// [cosmosdbAccountKey] The account key for the CosmosDB database.
  /// [cosmosdbSqlDatabaseId] The ID of the CosmosDB database.
  /// [documentId] The name of the field in output events used to specify the primary key which insert or update operations are based on.
  /// [name] The name of the Stream Analytics Output. Changing this forces a new resource to be created.
  /// [partitionKey] The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  OutputCosmosdbArgs({
    this.authenticationMode,
    required this.containerName,
    required this.cosmosdbAccountKey,
    required this.cosmosdbSqlDatabaseId,
    this.documentId,
    this.name,
    this.partitionKey,
    required this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'containerName': containerName,
      'cosmosdbAccountKey': cosmosdbAccountKey,
      'cosmosdbSqlDatabaseId': cosmosdbSqlDatabaseId,
      'documentId': ?documentId,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'streamAnalyticsJobId': streamAnalyticsJobId,
    };
  }

  factory OutputCosmosdbArgs.fromMap(Map<String, dynamic> map) {
    return OutputCosmosdbArgs(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      cosmosdbAccountKey: (map['cosmosdbAccountKey'] as String).input(),
      cosmosdbSqlDatabaseId: (map['cosmosdbSqlDatabaseId'] as String).input(),
      documentId: map['documentId'] == null ? null : (map['documentId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey'] as String).input(),
      streamAnalyticsJobId: (map['streamAnalyticsJobId'] as String).input(),
    );
  }
}

