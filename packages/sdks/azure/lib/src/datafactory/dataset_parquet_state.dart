// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_parquet_azure_blob_fs_location.dart';
import 'dataset_parquet_azure_blob_storage_location.dart';
import 'dataset_parquet_http_server_location.dart';
import 'dataset_parquet_schema_column.dart';

/// Input properties used for looking up and filtering DatasetParquet resources.
class DatasetParquetState {
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
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `http_server_location` block as defined below.
  final pulumi.Input<DatasetParquetHttpServerLocation>? httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String>? linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetParquetSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetParquetState].
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
  DatasetParquetState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<DatasetParquetAzureBlobFsLocation>? azureBlobFsLocation,
    pulumi.Output<DatasetParquetAzureBlobStorageLocation>? azureBlobStorageLocation,
    pulumi.Output<String>? compressionCodec,
    pulumi.Output<String>? compressionLevel,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<DatasetParquetHttpServerLocation>? httpServerLocation,
    pulumi.Output<String>? linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<DatasetParquetSchemaColumn>>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      azureBlobFsLocation = pulumi.Input.asOptionalInput<DatasetParquetAzureBlobFsLocation>(azureBlobFsLocation),
      azureBlobStorageLocation = pulumi.Input.asOptionalInput<DatasetParquetAzureBlobStorageLocation>(azureBlobStorageLocation),
      compressionCodec = pulumi.Input.asOptionalInput<String>(compressionCodec),
      compressionLevel = pulumi.Input.asOptionalInput<String>(compressionLevel),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      httpServerLocation = pulumi.Input.asOptionalInput<DatasetParquetHttpServerLocation>(httpServerLocation),
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetParquetSchemaColumn>>(schemaColumns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobFsLocation': ?pulumi.Input.mapOptionalInputValue<DatasetParquetAzureBlobFsLocation, Map<String, dynamic>>(azureBlobFsLocation, (value) => value.toMap()),
      'azureBlobStorageLocation': ?pulumi.Input.mapOptionalInputValue<DatasetParquetAzureBlobStorageLocation, Map<String, dynamic>>(azureBlobStorageLocation, (value) => value.toMap()),
      'compressionCodec': ?compressionCodec,
      'compressionLevel': ?compressionLevel,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetParquetHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': ?linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetParquetSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetParquetSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetParquetState.fromMap(Map<String, dynamic> map) {
    return DatasetParquetState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      azureBlobFsLocation: map['azureBlobFsLocation'] == null ? null : pulumi.Output.create<DatasetParquetAzureBlobFsLocation>(DatasetParquetAzureBlobFsLocation.fromMap((map['azureBlobFsLocation'] as Map).cast<String, dynamic>())),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : pulumi.Output.create<DatasetParquetAzureBlobStorageLocation>(DatasetParquetAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation'] as Map).cast<String, dynamic>())),
      compressionCodec: map['compressionCodec'] == null ? null : pulumi.Output.create<String>(map['compressionCodec'] as String),
      compressionLevel: map['compressionLevel'] == null ? null : pulumi.Output.create<String>(map['compressionLevel'] as String),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      httpServerLocation: map['httpServerLocation'] == null ? null : pulumi.Output.create<DatasetParquetHttpServerLocation>(DatasetParquetHttpServerLocation.fromMap((map['httpServerLocation'] as Map).cast<String, dynamic>())),
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetParquetSchemaColumn>>(pulumi.Input.decodeList<DatasetParquetSchemaColumn>(map['schemaColumns'], (value) => DatasetParquetSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

