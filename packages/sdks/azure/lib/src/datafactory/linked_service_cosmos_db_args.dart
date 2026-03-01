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
    pulumi.Output<String>? accountEndpoint,
    pulumi.Output<String>? accountKey,
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? connectionString,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? database,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
  }) :
      accountEndpoint = pulumi.Input.asOptionalInput<String>(accountEndpoint),
      accountKey = pulumi.Input.asOptionalInput<String>(accountKey),
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      database = pulumi.Input.asOptionalInput<String>(database),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters);

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
      accountEndpoint: map['accountEndpoint'] == null ? null : pulumi.Output.create<String>(map['accountEndpoint'] as String),
      accountKey: map['accountKey'] == null ? null : pulumi.Output.create<String>(map['accountKey'] as String),
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

