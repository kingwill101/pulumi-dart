// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_external_data_configuration_avro_option.dart';
import 'get_table_external_data_configuration_bigtable_option.dart';
import 'get_table_external_data_configuration_csv_option.dart';
import 'get_table_external_data_configuration_google_sheets_option.dart';
import 'get_table_external_data_configuration_hive_partitioning_option.dart';
import 'get_table_external_data_configuration_json_option.dart';
import 'get_table_external_data_configuration_parquet_option.dart';

class GetTableExternalDataConfiguration {
  /// Let BigQuery try to autodetect the schema and format of the table.
  final pulumi.Input<bool> autodetect;
  /// Additional options if sourceFormat is set to "AVRO"
  final pulumi.Input<List<GetTableExternalDataConfigurationAvroOption>> avroOptions;
  /// Additional options if sourceFormat is set to BIGTABLE.
  final pulumi.Input<List<GetTableExternalDataConfigurationBigtableOption>> bigtableOptions;
  /// The compression type of the data source. Valid values are "NONE" or "GZIP".
  final pulumi.Input<String> compression;
  /// The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form "&lt;project&gt;.&lt;location&gt;.&lt;connection_id&gt;" or "projects/&lt;project&gt;/locations/&lt;location&gt;/connections/&lt;connection_id&gt;".
  final pulumi.Input<String> connectionId;
  /// Additional properties to set if sourceFormat is set to "CSV".
  final pulumi.Input<List<GetTableExternalDataConfigurationCsvOption>> csvOptions;
  /// The data types that could be used as a target type when converting decimal values.
  final pulumi.Input<List<String>> decimalTargetTypes;
  /// Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems.
  final pulumi.Input<String> fileSetSpecType;
  /// Additional options if sourceFormat is set to "GOOGLE_SHEETS".
  final pulumi.Input<List<GetTableExternalDataConfigurationGoogleSheetsOption>> googleSheetsOptions;
  /// When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification.
  final pulumi.Input<List<GetTableExternalDataConfigurationHivePartitioningOption>> hivePartitioningOptions;
  /// Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  final pulumi.Input<bool> ignoreUnknownValues;
  /// Load option to be used together with sourceFormat newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and sourceFormat must be set to NEWLINE_DELIMITED_JSON).
  final pulumi.Input<String> jsonExtension;
  /// Additional properties to set if sourceFormat is set to JSON.
  final pulumi.Input<List<GetTableExternalDataConfigurationJsonOption>> jsonOptions;
  /// The maximum number of bad records that BigQuery can ignore when reading data.
  final pulumi.Input<int> maxBadRecords;
  /// Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  final pulumi.Input<String> metadataCacheMode;
  /// Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted.
  final pulumi.Input<String> objectMetadata;
  /// Additional properties to set if sourceFormat is set to PARQUET.
  final pulumi.Input<List<GetTableExternalDataConfigurationParquetOption>> parquetOptions;
  /// When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  final pulumi.Input<String> referenceFileSchemaUri;
  /// A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables.
  final pulumi.Input<String> schema;
  /// Please see sourceFormat under ExternalDataConfiguration in Bigquery's public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use "GOOGLE_SHEETS" the scopes must include "googleapis.com/auth/drive.readonly".
  final pulumi.Input<String> sourceFormat;
  /// A list of the fully-qualified URIs that point to your data in Google Cloud.
  final pulumi.Input<List<String>> sourceUris;

  /// Creates a new [GetTableExternalDataConfiguration].
  /// [autodetect] Let BigQuery try to autodetect the schema and format of the table.
  /// [avroOptions] Additional options if sourceFormat is set to "AVRO"
  /// [bigtableOptions] Additional options if sourceFormat is set to BIGTABLE.
  /// [compression] The compression type of the data source. Valid values are "NONE" or "GZIP".
  /// [connectionId] The connection specifying the credentials to be used to read external storage, such as Azure Blob, Cloud Storage, or S3. The connectionId can have the form "&lt;project&gt;.&lt;location&gt;.&lt;connection_id&gt;" or "projects/&lt;project&gt;/locations/&lt;location&gt;/connections/&lt;connection_id&gt;".
  /// [csvOptions] Additional properties to set if sourceFormat is set to "CSV".
  /// [decimalTargetTypes] The data types that could be used as a target type when converting decimal values.
  /// [fileSetSpecType] Specifies how source URIs are interpreted for constructing the file set to load.  By default source URIs are expanded against the underlying storage.  Other options include specifying manifest files. Only applicable to object storage systems.
  /// [googleSheetsOptions] Additional options if sourceFormat is set to "GOOGLE_SHEETS".
  /// [hivePartitioningOptions] When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification.
  /// [ignoreUnknownValues] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  /// [jsonExtension] Load option to be used together with sourceFormat newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and sourceFormat must be set to NEWLINE_DELIMITED_JSON).
  /// [jsonOptions] Additional properties to set if sourceFormat is set to JSON.
  /// [maxBadRecords] The maximum number of bad records that BigQuery can ignore when reading data.
  /// [metadataCacheMode] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  /// [objectMetadata] Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If ObjectMetadata is set, sourceFormat should be omitted.
  /// [parquetOptions] Additional properties to set if sourceFormat is set to PARQUET.
  /// [referenceFileSchemaUri] When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  /// [schema] A JSON schema for the external table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables.
  /// [sourceFormat] Please see sourceFormat under ExternalDataConfiguration in Bigquery's public API documentation (https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration) for supported formats. To use "GOOGLE_SHEETS" the scopes must include "googleapis.com/auth/drive.readonly".
  /// [sourceUris] A list of the fully-qualified URIs that point to your data in Google Cloud.
  const GetTableExternalDataConfiguration({
    required this.autodetect,
    required this.avroOptions,
    required this.bigtableOptions,
    required this.compression,
    required this.connectionId,
    required this.csvOptions,
    required this.decimalTargetTypes,
    required this.fileSetSpecType,
    required this.googleSheetsOptions,
    required this.hivePartitioningOptions,
    required this.ignoreUnknownValues,
    required this.jsonExtension,
    required this.jsonOptions,
    required this.maxBadRecords,
    required this.metadataCacheMode,
    required this.objectMetadata,
    required this.parquetOptions,
    required this.referenceFileSchemaUri,
    required this.schema,
    required this.sourceFormat,
    required this.sourceUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodetect': autodetect,
      'avroOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationAvroOption>, List<Map<String, dynamic>>>(avroOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationAvroOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bigtableOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationBigtableOption>, List<Map<String, dynamic>>>(bigtableOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationBigtableOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compression': compression,
      'connectionId': connectionId,
      'csvOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationCsvOption>, List<Map<String, dynamic>>>(csvOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationCsvOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'decimalTargetTypes': decimalTargetTypes,
      'fileSetSpecType': fileSetSpecType,
      'googleSheetsOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationGoogleSheetsOption>, List<Map<String, dynamic>>>(googleSheetsOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationGoogleSheetsOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hivePartitioningOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationHivePartitioningOption>, List<Map<String, dynamic>>>(hivePartitioningOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationHivePartitioningOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreUnknownValues': ignoreUnknownValues,
      'jsonExtension': jsonExtension,
      'jsonOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationJsonOption>, List<Map<String, dynamic>>>(jsonOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationJsonOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxBadRecords': maxBadRecords,
      'metadataCacheMode': metadataCacheMode,
      'objectMetadata': objectMetadata,
      'parquetOptions': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationParquetOption>, List<Map<String, dynamic>>>(parquetOptions, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationParquetOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referenceFileSchemaUri': referenceFileSchemaUri,
      'schema': schema,
      'sourceFormat': sourceFormat,
      'sourceUris': sourceUris,
    };
  }

  factory GetTableExternalDataConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfiguration(
      autodetect: pulumi.Input.fromValue(map['autodetect'] as bool),
      avroOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationAvroOption>(map['avroOptions']!, (value) => GetTableExternalDataConfigurationAvroOption.fromMap((value as Map).cast<String, dynamic>()))),
      bigtableOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationBigtableOption>(map['bigtableOptions']!, (value) => GetTableExternalDataConfigurationBigtableOption.fromMap((value as Map).cast<String, dynamic>()))),
      compression: pulumi.Input.fromValue(map['compression'] as String),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      csvOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationCsvOption>(map['csvOptions']!, (value) => GetTableExternalDataConfigurationCsvOption.fromMap((value as Map).cast<String, dynamic>()))),
      decimalTargetTypes: pulumi.Input.fromValue((map['decimalTargetTypes'] as List).cast<String>()),
      fileSetSpecType: pulumi.Input.fromValue(map['fileSetSpecType'] as String),
      googleSheetsOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationGoogleSheetsOption>(map['googleSheetsOptions']!, (value) => GetTableExternalDataConfigurationGoogleSheetsOption.fromMap((value as Map).cast<String, dynamic>()))),
      hivePartitioningOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationHivePartitioningOption>(map['hivePartitioningOptions']!, (value) => GetTableExternalDataConfigurationHivePartitioningOption.fromMap((value as Map).cast<String, dynamic>()))),
      ignoreUnknownValues: pulumi.Input.fromValue(map['ignoreUnknownValues'] as bool),
      jsonExtension: pulumi.Input.fromValue(map['jsonExtension'] as String),
      jsonOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationJsonOption>(map['jsonOptions']!, (value) => GetTableExternalDataConfigurationJsonOption.fromMap((value as Map).cast<String, dynamic>()))),
      maxBadRecords: pulumi.Input.fromValue(map['maxBadRecords'] as int),
      metadataCacheMode: pulumi.Input.fromValue(map['metadataCacheMode'] as String),
      objectMetadata: pulumi.Input.fromValue(map['objectMetadata'] as String),
      parquetOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationParquetOption>(map['parquetOptions']!, (value) => GetTableExternalDataConfigurationParquetOption.fromMap((value as Map).cast<String, dynamic>()))),
      referenceFileSchemaUri: pulumi.Input.fromValue(map['referenceFileSchemaUri'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
      sourceFormat: pulumi.Input.fromValue(map['sourceFormat'] as String),
      sourceUris: pulumi.Input.fromValue((map['sourceUris'] as List).cast<String>()),
    );
  }
}
