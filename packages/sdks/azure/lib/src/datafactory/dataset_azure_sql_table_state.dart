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
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? linkedServiceId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? schema,
    pulumi.Output<List<DatasetAzureSqlTableSchemaColumn>>? schemaColumns,
    pulumi.Output<String>? table,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      linkedServiceId = pulumi.Input.asOptionalInput<String>(linkedServiceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetAzureSqlTableSchemaColumn>>(schemaColumns),
      table = pulumi.Input.asOptionalInput<String>(table);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      linkedServiceId: map['linkedServiceId'] == null ? null : pulumi.Output.create<String>(map['linkedServiceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetAzureSqlTableSchemaColumn>>(pulumi.Input.decodeList<DatasetAzureSqlTableSchemaColumn>(map['schemaColumns'], (value) => DatasetAzureSqlTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
      table: map['table'] == null ? null : pulumi.Output.create<String>(map['table'] as String),
    );
  }
}

