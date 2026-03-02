// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_http_schema_column.dart';

/// Input properties used for looking up and filtering DatasetHttp resources.
class DatasetHttpState {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to HTTP Dataset:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String>? linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The relative URL based on the URL in the HTTP Linked Service.
  final pulumi.Input<String>? relativeUrl;
  /// The body for the HTTP request.
  final pulumi.Input<String>? requestBody;
  /// The HTTP method for the HTTP request. (e.g. GET, POST)
  final pulumi.Input<String>? requestMethod;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetHttpSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetHttpState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [relativeUrl] The relative URL based on the URL in the HTTP Linked Service.
  /// [requestBody] The body for the HTTP request.
  /// [requestMethod] The HTTP method for the HTTP request. (e.g. GET, POST)
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetHttpState({
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.folder,
    this.linkedServiceName,
    this.name,
    this.parameters,
    this.relativeUrl,
    this.requestBody,
    this.requestMethod,
    this.schemaColumns,
  });

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
      'relativeUrl': ?relativeUrl,
      'requestBody': ?requestBody,
      'requestMethod': ?requestMethod,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetHttpSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetHttpSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetHttpState.fromMap(Map<String, dynamic> map) {
    return DatasetHttpState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (map['linkedServiceName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      relativeUrl: map['relativeUrl'] == null ? null : (map['relativeUrl'] as String).input(),
      requestBody: map['requestBody'] == null ? null : (map['requestBody'] as String).input(),
      requestMethod: map['requestMethod'] == null ? null : (map['requestMethod'] as String).input(),
      schemaColumns: map['schemaColumns'] == null ? null : (pulumi.Input.decodeList<DatasetHttpSchemaColumn>(map['schemaColumns'], (value) => DatasetHttpSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

