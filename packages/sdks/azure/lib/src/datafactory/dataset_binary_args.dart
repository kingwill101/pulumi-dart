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
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<DatasetBinaryAzureBlobStorageLocation>? azureBlobStorageLocation,
    pulumi.Output<DatasetBinaryCompression>? compression,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<DatasetBinaryHttpServerLocation>? httpServerLocation,
    required pulumi.Output<String> linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<DatasetBinarySftpServerLocation>? sftpServerLocation,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      azureBlobStorageLocation = pulumi.Input.asOptionalInput<DatasetBinaryAzureBlobStorageLocation>(azureBlobStorageLocation),
      compression = pulumi.Input.asOptionalInput<DatasetBinaryCompression>(compression),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      httpServerLocation = pulumi.Input.asOptionalInput<DatasetBinaryHttpServerLocation>(httpServerLocation),
      linkedServiceName = pulumi.Input.asInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      sftpServerLocation = pulumi.Input.asOptionalInput<DatasetBinarySftpServerLocation>(sftpServerLocation);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : pulumi.Output.create<DatasetBinaryAzureBlobStorageLocation>(DatasetBinaryAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation'] as Map).cast<String, dynamic>())),
      compression: map['compression'] == null ? null : pulumi.Output.create<DatasetBinaryCompression>(DatasetBinaryCompression.fromMap((map['compression'] as Map).cast<String, dynamic>())),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      httpServerLocation: map['httpServerLocation'] == null ? null : pulumi.Output.create<DatasetBinaryHttpServerLocation>(DatasetBinaryHttpServerLocation.fromMap((map['httpServerLocation'] as Map).cast<String, dynamic>())),
      linkedServiceName: pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      sftpServerLocation: map['sftpServerLocation'] == null ? null : pulumi.Output.create<DatasetBinarySftpServerLocation>(DatasetBinarySftpServerLocation.fromMap((map['sftpServerLocation'] as Map).cast<String, dynamic>())),
    );
  }
}

