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
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? relativeUrl,
    pulumi.Output<String>? requestBody,
    pulumi.Output<String>? requestMethod,
    pulumi.Output<List<DatasetHttpSchemaColumn>>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      relativeUrl = pulumi.Input.asOptionalInput<String>(relativeUrl),
      requestBody = pulumi.Input.asOptionalInput<String>(requestBody),
      requestMethod = pulumi.Input.asOptionalInput<String>(requestMethod),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetHttpSchemaColumn>>(schemaColumns);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      relativeUrl: map['relativeUrl'] == null ? null : pulumi.Output.create<String>(map['relativeUrl'] as String),
      requestBody: map['requestBody'] == null ? null : pulumi.Output.create<String>(map['requestBody'] as String),
      requestMethod: map['requestMethod'] == null ? null : pulumi.Output.create<String>(map['requestMethod'] as String),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetHttpSchemaColumn>>(pulumi.Input.decodeList<DatasetHttpSchemaColumn>(map['schemaColumns'], (value) => DatasetHttpSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

