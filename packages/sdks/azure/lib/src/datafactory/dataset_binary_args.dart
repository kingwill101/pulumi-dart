// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_binary_azure_blob_storage_location.dart';
import 'dataset_binary_compression.dart';
import 'dataset_binary_http_server_location.dart';
import 'dataset_binary_sftp_server_location.dart';

/// {@template pulumi_datafactory_dataset_binary_dataset_binary_args_doc}
/// The set of arguments for DatasetBinary.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_binary_dataset_binary_args_doc}
class DatasetBinaryArgs {
  /// A map of additional properties to associate with the Data Factory Binary Dataset.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Binary Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// A `azure_blob_storage_location` block as defined below.
  final pulumi.Input<DatasetBinaryAzureBlobStorageLocation>? azureBlobStorageLocation;
  /// A `compression` block as defined below.
  final pulumi.Input<DatasetBinaryCompression>? compression;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `http_server_location` block as defined below.
  final pulumi.Input<DatasetBinaryHttpServerLocation>? httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Binary Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// Specifies a list of parameters to associate with the Data Factory Binary Dataset.
  ///
  /// The following supported locations for a Binary Dataset. One of these should be specified:
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `sftp_server_location` block as defined below.
  final pulumi.Input<DatasetBinarySftpServerLocation>? sftpServerLocation;

  /// Creates a new [DatasetBinaryArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Binary Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Binary Dataset.
  /// [azureBlobStorageLocation] A `azure_blob_storage_location` block as defined below.
  /// [compression] A `compression` block as defined below.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [httpServerLocation] A `http_server_location` block as defined below.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Binary Dataset with.
  /// [name] Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] Specifies a list of parameters to associate with the Data Factory Binary Dataset.
  /// [sftpServerLocation] A `sftp_server_location` block as defined below.
  DatasetBinaryArgs({
    this.additionalProperties,
    this.annotations,
    this.azureBlobStorageLocation,
    this.compression,
    required this.dataFactoryId,
    this.description,
    this.folder,
    this.httpServerLocation,
    required this.linkedServiceName,
    this.name,
    this.parameters,
    this.sftpServerLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobStorageLocation': ?pulumi.Input.mapOptionalInputValue<DatasetBinaryAzureBlobStorageLocation, Map<String, dynamic>>(azureBlobStorageLocation, (value) => value.toMap()),
      'compression': ?pulumi.Input.mapOptionalInputValue<DatasetBinaryCompression, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetBinaryHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'sftpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetBinarySftpServerLocation, Map<String, dynamic>>(sftpServerLocation, (value) => value.toMap()),
    };
  }

  factory DatasetBinaryArgs.fromMap(Map<String, dynamic> map) {
    return DatasetBinaryArgs(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azureBlobStorageLocation: (() { final guardedValue = map['azureBlobStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetBinaryAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetBinaryCompression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpServerLocation: (() { final guardedValue = map['httpServerLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetBinaryHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sftpServerLocation: (() { final guardedValue = map['sftpServerLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetBinarySftpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

