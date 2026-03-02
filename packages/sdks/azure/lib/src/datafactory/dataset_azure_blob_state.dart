// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_azure_blob_schema_column.dart';

/// Input properties used for looking up and filtering DatasetAzureBlob resources.
class DatasetAzureBlobState {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to Azure Blob Dataset:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicPathEnabled;
  /// The filename of the Azure Blob.
  final pulumi.Input<String>? filename;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String>? linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The path of the Azure Blob.
  final pulumi.Input<String>? path;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetAzureBlobSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetAzureBlobState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the Azure Blob.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [path] The path of the Azure Blob.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetAzureBlobState({
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    this.filename,
    this.folder,
    this.linkedServiceName,
    this.name,
    this.parameters,
    this.path,
    this.schemaColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': ?filename,
      'folder': ?folder,
      'linkedServiceName': ?linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'path': ?path,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetAzureBlobSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetAzureBlobSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetAzureBlobState.fromMap(Map<String, dynamic> map) {
    return DatasetAzureBlobState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : (map['dynamicFilenameEnabled']! as bool).input(),
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : (map['dynamicPathEnabled']! as bool).input(),
      filename: map['filename'] == null ? null : (map['filename']! as String).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (map['linkedServiceName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      schemaColumns: map['schemaColumns'] == null ? null : (pulumi.Input.decodeList<DatasetAzureBlobSchemaColumn>(map['schemaColumns']!, (value) => DatasetAzureBlobSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

