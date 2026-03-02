// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_delimited_text_azure_blob_fs_location.dart';
import 'dataset_delimited_text_azure_blob_storage_location.dart';
import 'dataset_delimited_text_http_server_location.dart';
import 'dataset_delimited_text_schema_column.dart';

/// {@template pulumi_datafactory_dataset_delimited_text_dataset_delimited_text_args_doc}
/// The set of arguments for DatasetDelimitedText.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_delimited_text_dataset_delimited_text_args_doc}
class DatasetDelimitedTextArgs {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported locations for a Delimited Text Dataset (exactly one of them must be set):
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// An `azure_blob_fs_location` block as defined below.
  final pulumi.Input<DatasetDelimitedTextAzureBlobFsLocation>? azureBlobFsLocation;
  /// An `azure_blob_storage_location` block as defined below.
  final pulumi.Input<DatasetDelimitedTextAzureBlobStorageLocation>? azureBlobStorageLocation;
  /// The column delimiter. Defaults to `,`.
  final pulumi.Input<String>? columnDelimiter;
  /// The compression codec used to read/write text files. Valid values are `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy` and `lz4`. Please note these values are case sensitive.
  final pulumi.Input<String>? compressionCodec;
  /// The compression ratio for the Data Factory Dataset. Valid values are `Fastest` or `Optimal`. Please note these values are case sensitive.
  final pulumi.Input<String>? compressionLevel;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The encoding format for the file.
  final pulumi.Input<String>? encoding;
  /// The escape character. Defaults to `\`.
  final pulumi.Input<String>? escapeCharacter;
  /// When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to `false`.
  final pulumi.Input<bool>? firstRowAsHeader;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `http_server_location` block as defined below.
  ///
  /// The following supported arguments are specific to Delimited Text Dataset:
  final pulumi.Input<DatasetDelimitedTextHttpServerLocation>? httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// The null value string. Defaults to `""`.
  final pulumi.Input<String>? nullValue;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The quote character. Defaults to `"`.
  final pulumi.Input<String>? quoteCharacter;
  /// The row delimiter. Defaults to any of the following values on read: `\r\n`, `\r`, `\n`, and `\n` or `\r\n` on write by mapping data flow and Copy activity respectively.
  final pulumi.Input<String>? rowDelimiter;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetDelimitedTextSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetDelimitedTextArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [azureBlobFsLocation] An `azure_blob_fs_location` block as defined below.
  /// [azureBlobStorageLocation] An `azure_blob_storage_location` block as defined below.
  /// [columnDelimiter] The column delimiter. Defaults to `,`.
  /// [compressionCodec] The compression codec used to read/write text files. Valid values are `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy` and `lz4`. Please note these values are case sensitive.
  /// [compressionLevel] The compression ratio for the Data Factory Dataset. Valid values are `Fastest` or `Optimal`. Please note these values are case sensitive.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [encoding] The encoding format for the file.
  /// [escapeCharacter] The escape character. Defaults to `\`.
  /// [firstRowAsHeader] When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to `false`.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [httpServerLocation] A `http_server_location` block as defined below.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [nullValue] The null value string. Defaults to `""`.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [quoteCharacter] The quote character. Defaults to `"`.
  /// [rowDelimiter] The row delimiter. Defaults to any of the following values on read: `\r\n`, `\r`, `\n`, and `\n` or `\r\n` on write by mapping data flow and Copy activity respectively.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetDelimitedTextArgs({
    this.additionalProperties,
    this.annotations,
    this.azureBlobFsLocation,
    this.azureBlobStorageLocation,
    this.columnDelimiter,
    this.compressionCodec,
    this.compressionLevel,
    required this.dataFactoryId,
    this.description,
    this.encoding,
    this.escapeCharacter,
    this.firstRowAsHeader,
    this.folder,
    this.httpServerLocation,
    required this.linkedServiceName,
    this.name,
    this.nullValue,
    this.parameters,
    this.quoteCharacter,
    this.rowDelimiter,
    this.schemaColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobFsLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextAzureBlobFsLocation, Map<String, dynamic>>(azureBlobFsLocation, (value) => value.toMap()),
      'azureBlobStorageLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextAzureBlobStorageLocation, Map<String, dynamic>>(azureBlobStorageLocation, (value) => value.toMap()),
      'columnDelimiter': ?columnDelimiter,
      'compressionCodec': ?compressionCodec,
      'compressionLevel': ?compressionLevel,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'encoding': ?encoding,
      'escapeCharacter': ?escapeCharacter,
      'firstRowAsHeader': ?firstRowAsHeader,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'nullValue': ?nullValue,
      'parameters': ?parameters,
      'quoteCharacter': ?quoteCharacter,
      'rowDelimiter': ?rowDelimiter,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetDelimitedTextSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetDelimitedTextSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetDelimitedTextArgs.fromMap(Map<String, dynamic> map) {
    return DatasetDelimitedTextArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      azureBlobFsLocation: map['azureBlobFsLocation'] == null ? null : (DatasetDelimitedTextAzureBlobFsLocation.fromMap((map['azureBlobFsLocation']! as Map).cast<String, dynamic>())).input(),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : (DatasetDelimitedTextAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation']! as Map).cast<String, dynamic>())).input(),
      columnDelimiter: map['columnDelimiter'] == null ? null : (map['columnDelimiter']! as String).input(),
      compressionCodec: map['compressionCodec'] == null ? null : (map['compressionCodec']! as String).input(),
      compressionLevel: map['compressionLevel'] == null ? null : (map['compressionLevel']! as String).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']! as String).input(),
      escapeCharacter: map['escapeCharacter'] == null ? null : (map['escapeCharacter']! as String).input(),
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : (map['firstRowAsHeader']! as bool).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      httpServerLocation: map['httpServerLocation'] == null ? null : (DatasetDelimitedTextHttpServerLocation.fromMap((map['httpServerLocation']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nullValue: map['nullValue'] == null ? null : (map['nullValue']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      quoteCharacter: map['quoteCharacter'] == null ? null : (map['quoteCharacter']! as String).input(),
      rowDelimiter: map['rowDelimiter'] == null ? null : (map['rowDelimiter']! as String).input(),
      schemaColumns: map['schemaColumns'] == null ? null : (pulumi.Input.decodeList<DatasetDelimitedTextSchemaColumn>(map['schemaColumns']!, (value) => DatasetDelimitedTextSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

