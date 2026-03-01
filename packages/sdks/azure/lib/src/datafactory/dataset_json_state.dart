// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_json_azure_blob_storage_location.dart';
import 'dataset_json_http_server_location.dart';
import 'dataset_json_schema_column.dart';

/// Input properties used for looking up and filtering DatasetJson resources.
class DatasetJsonState {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to JSON Dataset:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// A `azure_blob_storage_location` block as defined below.
  ///
  /// The following supported arguments are specific to Delimited Text Dataset:
  final pulumi.Input<DatasetJsonAzureBlobStorageLocation>? azureBlobStorageLocation;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The encoding format for the file.
  final pulumi.Input<String>? encoding;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `http_server_location` block as defined below.
  final pulumi.Input<DatasetJsonHttpServerLocation>? httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String>? linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetJsonSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetJsonState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [azureBlobStorageLocation] A `azure_blob_storage_location` block as defined below.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [encoding] The encoding format for the file.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [httpServerLocation] A `http_server_location` block as defined below.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetJsonState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<DatasetJsonAzureBlobStorageLocation>? azureBlobStorageLocation,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encoding,
    pulumi.Output<String>? folder,
    pulumi.Output<DatasetJsonHttpServerLocation>? httpServerLocation,
    pulumi.Output<String>? linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<DatasetJsonSchemaColumn>>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      azureBlobStorageLocation = pulumi.Input.asOptionalInput<DatasetJsonAzureBlobStorageLocation>(azureBlobStorageLocation),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      httpServerLocation = pulumi.Input.asOptionalInput<DatasetJsonHttpServerLocation>(httpServerLocation),
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetJsonSchemaColumn>>(schemaColumns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobStorageLocation': ?pulumi.Input.mapOptionalInputValue<DatasetJsonAzureBlobStorageLocation, Map<String, dynamic>>(azureBlobStorageLocation, (value) => value.toMap()),
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'encoding': ?encoding,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetJsonHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': ?linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetJsonSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetJsonSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetJsonState.fromMap(Map<String, dynamic> map) {
    return DatasetJsonState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : pulumi.Output.create<DatasetJsonAzureBlobStorageLocation>(DatasetJsonAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation'] as Map).cast<String, dynamic>())),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encoding: map['encoding'] == null ? null : pulumi.Output.create<String>(map['encoding'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      httpServerLocation: map['httpServerLocation'] == null ? null : pulumi.Output.create<DatasetJsonHttpServerLocation>(DatasetJsonHttpServerLocation.fromMap((map['httpServerLocation'] as Map).cast<String, dynamic>())),
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetJsonSchemaColumn>>(pulumi.Input.decodeList<DatasetJsonSchemaColumn>(map['schemaColumns'], (value) => DatasetJsonSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

