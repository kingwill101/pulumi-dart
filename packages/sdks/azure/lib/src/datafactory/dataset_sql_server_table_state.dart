// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_sql_server_table_schema_column.dart';

/// Input properties used for looking up and filtering DatasetSqlServerTable resources.
class DatasetSqlServerTableState {
  /// A map of additional properties to associate with the Data Factory Dataset SQL Server Table.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset SQL Server Table.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset SQL Server Table.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String>? linkedServiceName;
  /// Specifies the name of the Data Factory Dataset SQL Server Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset SQL Server Table.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetSqlServerTableSchemaColumn>>? schemaColumns;
  /// The table name of the Data Factory Dataset SQL Server Table.
  final pulumi.Input<String>? tableName;

  /// Creates a new [DatasetSqlServerTableState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset SQL Server Table.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset SQL Server Table.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset SQL Server Table.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset SQL Server Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset SQL Server Table.
  /// [schemaColumns] A `schema_column` block as defined below.
  /// [tableName] The table name of the Data Factory Dataset SQL Server Table.
  DatasetSqlServerTableState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<DatasetSqlServerTableSchemaColumn>>? schemaColumns,
    pulumi.Output<String>? tableName,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetSqlServerTableSchemaColumn>>(schemaColumns),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'linkedServiceName': ?linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetSqlServerTableSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetSqlServerTableSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': ?tableName,
    };
  }

  factory DatasetSqlServerTableState.fromMap(Map<String, dynamic> map) {
    return DatasetSqlServerTableState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetSqlServerTableSchemaColumn>>(pulumi.Input.decodeList<DatasetSqlServerTableSchemaColumn>(map['schemaColumns'], (value) => DatasetSqlServerTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

