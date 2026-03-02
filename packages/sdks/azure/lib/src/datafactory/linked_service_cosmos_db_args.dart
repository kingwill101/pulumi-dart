// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_cosmos_db_linked_service_cosmos_db_args_doc}
/// The set of arguments for LinkedServiceCosmosDb.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_cosmos_db_linked_service_cosmos_db_args_doc}
class LinkedServiceCosmosDbArgs {
  /// The endpoint of the Azure CosmosDB account. Required if `connection_string` is unspecified.
  final pulumi.Input<String>? accountEndpoint;
  /// The account key of the Azure Cosmos DB account. Required if `connection_string` is unspecified.
  final pulumi.Input<String>? accountKey;
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to CosmosDB Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string. Required if `account_endpoint`, `account_key`, and `database` are unspecified.
  final pulumi.Input<String>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The name of the database. Required if `connection_string` is unspecified.
  final pulumi.Input<String>? database;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceCosmosDbArgs].
  /// [accountEndpoint] The endpoint of the Azure CosmosDB account. Required if `connection_string` is unspecified.
  /// [accountKey] The account key of the Azure Cosmos DB account. Required if `connection_string` is unspecified.
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string. Required if `account_endpoint`, `account_key`, and `database` are unspecified.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [database] The name of the database. Required if `connection_string` is unspecified.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  LinkedServiceCosmosDbArgs({
    this.accountEndpoint,
    this.accountKey,
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    required this.dataFactoryId,
    this.database,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEndpoint': ?accountEndpoint,
      'accountKey': ?accountKey,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'dataFactoryId': dataFactoryId,
      'database': ?database,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceCosmosDbArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceCosmosDbArgs(
      accountEndpoint: map['accountEndpoint'] == null ? null : (map['accountEndpoint'] as String).input(),
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

