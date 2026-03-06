// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_delimited_text_azure_blob_fs_location.dart';
import 'dataset_delimited_text_azure_blob_storage_location.dart';
import 'dataset_delimited_text_http_server_location.dart';
import 'dataset_delimited_text_schema_column.dart';

/// Input properties used for looking up and filtering DatasetDelimitedText resources.
class DatasetDelimitedTextState {
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
  final pulumi.Input<String>? dataFactoryId;
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
  final pulumi.Input<String>? linkedServiceName;
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

  /// Creates a new [DatasetDelimitedTextState].
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
  const DatasetDelimitedTextState({
    this.additionalProperties,
    this.annotations,
    this.azureBlobFsLocation,
    this.azureBlobStorageLocation,
    this.columnDelimiter,
    this.compressionCodec,
    this.compressionLevel,
    this.dataFactoryId,
    this.description,
    this.encoding,
    this.escapeCharacter,
    this.firstRowAsHeader,
    this.folder,
    this.httpServerLocation,
    this.linkedServiceName,
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
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'encoding': ?encoding,
      'escapeCharacter': ?escapeCharacter,
      'firstRowAsHeader': ?firstRowAsHeader,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': ?linkedServiceName,
      'name': ?name,
      'nullValue': ?nullValue,
      'parameters': ?parameters,
      'quoteCharacter': ?quoteCharacter,
      'rowDelimiter': ?rowDelimiter,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetDelimitedTextSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetDelimitedTextSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetDelimitedTextState.fromMap(Map<String, dynamic> map) {
    return DatasetDelimitedTextState(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      azureBlobFsLocation: (() { final guardedValue = map['azureBlobFsLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetDelimitedTextAzureBlobFsLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureBlobStorageLocation: (() { final guardedValue = map['azureBlobStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetDelimitedTextAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      columnDelimiter: (() { final guardedValue = map['columnDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compressionCodec: (() { final guardedValue = map['compressionCodec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compressionLevel: (() { final guardedValue = map['compressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      escapeCharacter: (() { final guardedValue = map['escapeCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstRowAsHeader: (() { final guardedValue = map['firstRowAsHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpServerLocation: (() { final guardedValue = map['httpServerLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetDelimitedTextHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nullValue: (() { final guardedValue = map['nullValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      quoteCharacter: (() { final guardedValue = map['quoteCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowDelimiter: (() { final guardedValue = map['rowDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaColumns: (() { final guardedValue = map['schemaColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetDelimitedTextSchemaColumn>(guardedValue, (value) => DatasetDelimitedTextSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

