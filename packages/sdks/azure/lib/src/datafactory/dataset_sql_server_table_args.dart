// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_sql_server_table_schema_column.dart';

/// {@template pulumi_datafactory_dataset_sql_server_table_dataset_sql_server_table_args_doc}
/// The set of arguments for DatasetSqlServerTable.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_sql_server_table_dataset_sql_server_table_args_doc}
class DatasetSqlServerTableArgs {
  /// A map of additional properties to associate with the Data Factory Dataset SQL Server Table.
  final pulumi.Input<Map<String, String>?>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset SQL Server Table.
  final pulumi.Input<List<String>?>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset SQL Server Table.
  final pulumi.Input<String?>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String?>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset SQL Server Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String?>? name;
  /// A map of parameters to associate with the Data Factory Dataset SQL Server Table.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// A `schemaColumn` block as defined below.
  final pulumi.Input<List<DatasetSqlServerTableSchemaColumn>?>? schemaColumns;
  /// The table name of the Data Factory Dataset SQL Server Table.
  final pulumi.Input<String?>? tableName;

  /// Creates a new [DatasetSqlServerTableArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset SQL Server Table.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset SQL Server Table.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset SQL Server Table.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset SQL Server Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset SQL Server Table.
  /// [schemaColumns] A `schemaColumn` block as defined below.
  /// [tableName] The table name of the Data Factory Dataset SQL Server Table.
  const DatasetSqlServerTableArgs({
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
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetSqlServerTableSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetSqlServerTableSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': ?tableName,
    };
  }

  factory DatasetSqlServerTableArgs.fromMap(Map<String, dynamic> map) {
    return DatasetSqlServerTableArgs(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      schemaColumns: (() { final guardedValue = map['schemaColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetSqlServerTableSchemaColumn>(guardedValue, (value) => DatasetSqlServerTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
