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
  DatasetDelimitedTextState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<DatasetDelimitedTextAzureBlobFsLocation>? azureBlobFsLocation,
    pulumi.Output<DatasetDelimitedTextAzureBlobStorageLocation>? azureBlobStorageLocation,
    pulumi.Output<String>? columnDelimiter,
    pulumi.Output<String>? compressionCodec,
    pulumi.Output<String>? compressionLevel,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encoding,
    pulumi.Output<String>? escapeCharacter,
    pulumi.Output<bool>? firstRowAsHeader,
    pulumi.Output<String>? folder,
    pulumi.Output<DatasetDelimitedTextHttpServerLocation>? httpServerLocation,
    pulumi.Output<String>? linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nullValue,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? quoteCharacter,
    pulumi.Output<String>? rowDelimiter,
    pulumi.Output<List<DatasetDelimitedTextSchemaColumn>>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      azureBlobFsLocation = pulumi.Input.asOptionalInput<DatasetDelimitedTextAzureBlobFsLocation>(azureBlobFsLocation),
      azureBlobStorageLocation = pulumi.Input.asOptionalInput<DatasetDelimitedTextAzureBlobStorageLocation>(azureBlobStorageLocation),
      columnDelimiter = pulumi.Input.asOptionalInput<String>(columnDelimiter),
      compressionCodec = pulumi.Input.asOptionalInput<String>(compressionCodec),
      compressionLevel = pulumi.Input.asOptionalInput<String>(compressionLevel),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      escapeCharacter = pulumi.Input.asOptionalInput<String>(escapeCharacter),
      firstRowAsHeader = pulumi.Input.asOptionalInput<bool>(firstRowAsHeader),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      httpServerLocation = pulumi.Input.asOptionalInput<DatasetDelimitedTextHttpServerLocation>(httpServerLocation),
      linkedServiceName = pulumi.Input.asOptionalInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      nullValue = pulumi.Input.asOptionalInput<String>(nullValue),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      quoteCharacter = pulumi.Input.asOptionalInput<String>(quoteCharacter),
      rowDelimiter = pulumi.Input.asOptionalInput<String>(rowDelimiter),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetDelimitedTextSchemaColumn>>(schemaColumns);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      azureBlobFsLocation: map['azureBlobFsLocation'] == null ? null : pulumi.Output.create<DatasetDelimitedTextAzureBlobFsLocation>(DatasetDelimitedTextAzureBlobFsLocation.fromMap((map['azureBlobFsLocation'] as Map).cast<String, dynamic>())),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : pulumi.Output.create<DatasetDelimitedTextAzureBlobStorageLocation>(DatasetDelimitedTextAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation'] as Map).cast<String, dynamic>())),
      columnDelimiter: map['columnDelimiter'] == null ? null : pulumi.Output.create<String>(map['columnDelimiter'] as String),
      compressionCodec: map['compressionCodec'] == null ? null : pulumi.Output.create<String>(map['compressionCodec'] as String),
      compressionLevel: map['compressionLevel'] == null ? null : pulumi.Output.create<String>(map['compressionLevel'] as String),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encoding: map['encoding'] == null ? null : pulumi.Output.create<String>(map['encoding'] as String),
      escapeCharacter: map['escapeCharacter'] == null ? null : pulumi.Output.create<String>(map['escapeCharacter'] as String),
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : pulumi.Output.create<bool>(map['firstRowAsHeader'] as bool),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      httpServerLocation: map['httpServerLocation'] == null ? null : pulumi.Output.create<DatasetDelimitedTextHttpServerLocation>(DatasetDelimitedTextHttpServerLocation.fromMap((map['httpServerLocation'] as Map).cast<String, dynamic>())),
      linkedServiceName: map['linkedServiceName'] == null ? null : pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nullValue: map['nullValue'] == null ? null : pulumi.Output.create<String>(map['nullValue'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      quoteCharacter: map['quoteCharacter'] == null ? null : pulumi.Output.create<String>(map['quoteCharacter'] as String),
      rowDelimiter: map['rowDelimiter'] == null ? null : pulumi.Output.create<String>(map['rowDelimiter'] as String),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetDelimitedTextSchemaColumn>>(pulumi.Input.decodeList<DatasetDelimitedTextSchemaColumn>(map['schemaColumns'], (value) => DatasetDelimitedTextSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

