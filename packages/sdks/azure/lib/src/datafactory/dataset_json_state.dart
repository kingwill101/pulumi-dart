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
  final pulumi.Input<DatasetJsonAzureBlobStorageLocation>?
  azureBlobStorageLocation;

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
    this.additionalProperties,
    this.annotations,
    this.azureBlobStorageLocation,
    this.dataFactoryId,
    this.description,
    this.encoding,
    this.folder,
    this.httpServerLocation,
    this.linkedServiceName,
    this.name,
    this.parameters,
    this.schemaColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobStorageLocation':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetJsonAzureBlobStorageLocation,
            Map<String, dynamic>
          >(azureBlobStorageLocation, (value) => value.toMap()),
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'encoding': ?encoding,
      'folder': ?folder,
      'httpServerLocation':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetJsonHttpServerLocation,
            Map<String, dynamic>
          >(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': ?linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatasetJsonSchemaColumn>,
            List<Map<String, dynamic>>
          >(
            schemaColumns,
            (value) =>
                pulumi.Input.encodeList<
                  DatasetJsonSchemaColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DatasetJsonState.fromMap(Map<String, dynamic> map) {
    return DatasetJsonState(
      additionalProperties: (() {
        final guardedValue = map['additionalProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      azureBlobStorageLocation: (() {
        final guardedValue = map['azureBlobStorageLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetJsonAzureBlobStorageLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataFactoryId: (() {
        final guardedValue = map['dataFactoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encoding: (() {
        final guardedValue = map['encoding'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      httpServerLocation: (() {
        final guardedValue = map['httpServerLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetJsonHttpServerLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      schemaColumns: (() {
        final guardedValue = map['schemaColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatasetJsonSchemaColumn>(
            guardedValue,
            (value) => DatasetJsonSchemaColumn.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
