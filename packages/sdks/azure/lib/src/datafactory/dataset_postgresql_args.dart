// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_postgresql_schema_column.dart';

/// {@template pulumi_datafactory_dataset_postgresql_dataset_postgresql_args_doc}
/// The set of arguments for DatasetPostgresql.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_postgresql_dataset_postgresql_args_doc}
class DatasetPostgresqlArgs {
  /// A map of additional properties to associate with the Data Factory Dataset PostgreSQL.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset PostgreSQL.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset PostgreSQL.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset PostgreSQL. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset PostgreSQL.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetPostgresqlSchemaColumn>>? schemaColumns;
  /// The table name of the Data Factory Dataset PostgreSQL.
  final pulumi.Input<String>? tableName;

  /// Creates a new [DatasetPostgresqlArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset PostgreSQL.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset PostgreSQL.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset PostgreSQL.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset PostgreSQL. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset PostgreSQL.
  /// [schemaColumns] A `schema_column` block as defined below.
  /// [tableName] The table name of the Data Factory Dataset PostgreSQL.
  DatasetPostgresqlArgs({
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.name,
    this.parameters,
    this.schemaColumns,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetPostgresqlSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetPostgresqlSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': ?tableName,
    };
  }

  factory DatasetPostgresqlArgs.fromMap(Map<String, dynamic> map) {
    return DatasetPostgresqlArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      schemaColumns: map['schemaColumns'] == null ? null : (pulumi.Input.decodeList<DatasetPostgresqlSchemaColumn>(map['schemaColumns']!, (value) => DatasetPostgresqlSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tableName: map['tableName'] == null ? null : (map['tableName']! as String).input(),
    );
  }
}

