// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_azure_sql_table_schema_column.dart';

/// Input properties used for looking up and filtering DatasetAzureSqlTable resources.
class DatasetAzureSqlTableState {
  /// A map of additional properties to associate with the Data Factory Dataset Azure SQL Table.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset Azure SQL Table.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset Azure SQL Table.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service ID in which to associate the Dataset with.
  final pulumi.Input<String>? linkedServiceId;
  /// Specifies the name of the Data Factory Dataset Azure SQL Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset Azure SQL Table.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The schema name of the table in the Azure SQL Database.
  final pulumi.Input<String>? schema;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetAzureSqlTableSchemaColumn>>? schemaColumns;
  /// The table name of the table in the Azure SQL Database.
  final pulumi.Input<String>? table;

  /// Creates a new [DatasetAzureSqlTableState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset Azure SQL Table.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset Azure SQL Table.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset Azure SQL Table.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceId] The Data Factory Linked Service ID in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset Azure SQL Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset Azure SQL Table.
  /// [schema] The schema name of the table in the Azure SQL Database.
  /// [schemaColumns] A `schema_column` block as defined below.
  /// [table] The table name of the table in the Azure SQL Database.
  DatasetAzureSqlTableState({
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.folder,
    this.linkedServiceId,
    this.name,
    this.parameters,
    this.schema,
    this.schemaColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'linkedServiceId': ?linkedServiceId,
      'name': ?name,
      'parameters': ?parameters,
      'schema': ?schema,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetAzureSqlTableSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetAzureSqlTableSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': ?table,
    };
  }

  factory DatasetAzureSqlTableState.fromMap(Map<String, dynamic> map) {
    return DatasetAzureSqlTableState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      linkedServiceId: map['linkedServiceId'] == null ? null : (map['linkedServiceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
      schemaColumns: map['schemaColumns'] == null ? null : (pulumi.Input.decodeList<DatasetAzureSqlTableSchemaColumn>(map['schemaColumns'], (value) => DatasetAzureSqlTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      table: map['table'] == null ? null : (map['table'] as String).input(),
    );
  }
}

