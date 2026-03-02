// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_parquet_azure_blob_fs_location.dart';
import 'dataset_parquet_azure_blob_storage_location.dart';
import 'dataset_parquet_http_server_location.dart';
import 'dataset_parquet_schema_column.dart';

/// {@template pulumi_datafactory_dataset_parquet_dataset_parquet_args_doc}
/// The set of arguments for DatasetParquet.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_parquet_dataset_parquet_args_doc}
class DatasetParquetArgs {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported locations for a Parquet Dataset:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// A `azure_blob_fs_location` block as defined below.
  final pulumi.Input<DatasetParquetAzureBlobFsLocation>? azureBlobFsLocation;
  /// A `azure_blob_storage_location` block as defined below.
  ///
  /// The following supported arguments are specific to Parquet Dataset:
  final pulumi.Input<DatasetParquetAzureBlobStorageLocation>? azureBlobStorageLocation;
  /// The compression codec used to read/write text files. Valid values are `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, or `lz4`. Please note these values are case-sensitive.
  final pulumi.Input<String>? compressionCodec;
  /// Specifies the compression level. Possible values are `Optimal` and `Fastest`,
  final pulumi.Input<String>? compressionLevel;
  /// The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `http_server_location` block as defined below.
  final pulumi.Input<DatasetParquetHttpServerLocation>? httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetParquetSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetParquetArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [azureBlobFsLocation] A `azure_blob_fs_location` block as defined below.
  /// [azureBlobStorageLocation] A `azure_blob_storage_location` block as defined below.
  /// [compressionCodec] The compression codec used to read/write text files. Valid values are `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, or `lz4`. Please note these values are case-sensitive.
  /// [compressionLevel] Specifies the compression level. Possible values are `Optimal` and `Fastest`,
  /// [dataFactoryId] The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [httpServerLocation] A `http_server_location` block as defined below.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetParquetArgs({
    this.additionalProperties,
    this.annotations,
    this.azureBlobFsLocation,
    this.azureBlobStorageLocation,
    this.compressionCodec,
    this.compressionLevel,
    required this.dataFactoryId,
    this.description,
    this.folder,
    this.httpServerLocation,
    required this.linkedServiceName,
    this.name,
    this.parameters,
    this.schemaColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobFsLocation': ?pulumi.Input.mapOptionalInputValue<DatasetParquetAzureBlobFsLocation, Map<String, dynamic>>(azureBlobFsLocation, (value) => value.toMap()),
      'azureBlobStorageLocation': ?pulumi.Input.mapOptionalInputValue<DatasetParquetAzureBlobStorageLocation, Map<String, dynamic>>(azureBlobStorageLocation, (value) => value.toMap()),
      'compressionCodec': ?compressionCodec,
      'compressionLevel': ?compressionLevel,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetParquetHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetParquetSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetParquetSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetParquetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetParquetArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      azureBlobFsLocation: map['azureBlobFsLocation'] == null ? null : (DatasetParquetAzureBlobFsLocation.fromMap((map['azureBlobFsLocation'] as Map).cast<String, dynamic>())).input(),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : (DatasetParquetAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation'] as Map).cast<String, dynamic>())).input(),
      compressionCodec: map['compressionCodec'] == null ? null : (map['compressionCodec'] as String).input(),
      compressionLevel: map['compressionLevel'] == null ? null : (map['compressionLevel'] as String).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      httpServerLocation: map['httpServerLocation'] == null ? null : (DatasetParquetHttpServerLocation.fromMap((map['httpServerLocation'] as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      schemaColumns: map['schemaColumns'] == null ? null : (pulumi.Input.decodeList<DatasetParquetSchemaColumn>(map['schemaColumns'], (value) => DatasetParquetSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

