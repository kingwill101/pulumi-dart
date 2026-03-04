// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_cosmos_db_mongo_api_linked_service_cosmos_db_mongo_api_args_doc}
/// The set of arguments for LinkedServiceCosmosDbMongoApi.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_cosmos_db_mongo_api_linked_service_cosmos_db_mongo_api_args_doc}
class LinkedServiceCosmosDbMongoApiArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to CosmosDB Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;

  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;

  /// The connection string.
  final pulumi.Input<String>? connectionString;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;

  /// The name of the database.
  final pulumi.Input<String>? database;

  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;

  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;

  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;

  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Whether API server version is 3.2 or higher. Defaults to `false`.
  final pulumi.Input<bool>? serverVersionIs32OrHigher;

  /// Creates a new [LinkedServiceCosmosDbMongoApiArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [database] The name of the database.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [serverVersionIs32OrHigher] Whether API server version is 3.2 or higher. Defaults to `false`.
  LinkedServiceCosmosDbMongoApiArgs({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    required this.dataFactoryId,
    this.database,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
    this.serverVersionIs32OrHigher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'dataFactoryId': dataFactoryId,
      'database': ?database,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'serverVersionIs32OrHigher': ?serverVersionIs32OrHigher,
    };
  }

  factory LinkedServiceCosmosDbMongoApiArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceCosmosDbMongoApiArgs(
      additionalProperties: (() {
        final guardedValue = map['additionalProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      integrationRuntimeName: (() {
        final guardedValue = map['integrationRuntimeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serverVersionIs32OrHigher: (() {
        final guardedValue = map['serverVersionIs32OrHigher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
