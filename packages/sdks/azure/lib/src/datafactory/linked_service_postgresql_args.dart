// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_postgresql_linked_service_postgresql_args_doc}
/// The set of arguments for LinkedServicePostgresql.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_postgresql_linked_service_postgresql_args_doc}
class LinkedServicePostgresqlArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string in which to authenticate with PostgreSQL.
  final pulumi.Input<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service PostgreSQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServicePostgresqlArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service PostgreSQL.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service PostgreSQL.
  /// [connectionString] The connection string in which to authenticate with PostgreSQL.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service PostgreSQL.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service PostgreSQL.
  /// [name] Specifies the name of the Data Factory Linked Service PostgreSQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service PostgreSQL.
  LinkedServicePostgresqlArgs({
    this.additionalProperties,
    this.annotations,
    required this.connectionString,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': connectionString,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServicePostgresqlArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServicePostgresqlArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      connectionString: (map['connectionString'] as String).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

