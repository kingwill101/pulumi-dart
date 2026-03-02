// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_options.dart';
import 'bigtable_options.dart';
import 'csv_options.dart';
import 'google_sheets_options.dart';
import 'hive_partitioning_options.dart';
import 'json_options.dart';
import 'parquet_options.dart';
import 'table_schema.dart';

class ExternalDataConfiguration {
  /// Try to detect schema and format options automatically. Any option specified explicitly will be honored.
  final pulumi.Input<bool>? autodetect;
  /// Additional properties to set if sourceFormat is set to Avro.
  final pulumi.Input<AvroOptions>? avroOptions;
  /// [Optional] Additional options if sourceFormat is set to BIGTABLE.
  final pulumi.Input<BigtableOptions>? bigtableOptions;
  /// [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  final pulumi.Input<String>? compression;
  /// [Optional, Trusted Tester] Connection for external data source.
  final pulumi.Input<String>? connectionId;
  /// Additional properties to set if sourceFormat is set to CSV.
  final pulumi.Input<CsvOptions>? csvOptions;
  /// [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final pulumi.Input<List<String>>? decimalTargetTypes;
  /// [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  final pulumi.Input<String>? fileSetSpecType;
  /// [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  final pulumi.Input<GoogleSheetsOptions>? googleSheetsOptions;
  /// [Optional] Options to configure hive partitioning support.
  final pulumi.Input<HivePartitioningOptions>? hivePartitioningOptions;
  /// [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  final pulumi.Input<bool>? ignoreUnknownValues;
  /// Additional properties to set if `sourceFormat` is set to `NEWLINE_DELIMITED_JSON`.
  final pulumi.Input<JsonOptions>? jsonOptions;
  /// [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  final pulumi.Input<int>? maxBadRecords;
  /// [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  final pulumi.Input<String>? metadataCacheMode;
  /// ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
  final pulumi.Input<String>? objectMetadata;
  /// Additional properties to set if sourceFormat is set to Parquet.
  final pulumi.Input<ParquetOptions>? parquetOptions;
  /// [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
  final pulumi.Input<String>? referenceFileSchemaUri;
  /// [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  final pulumi.Input<TableSchema>? schema;
  /// [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  final pulumi.Input<String>? sourceFormat;
  /// [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  final pulumi.Input<List<String>>? sourceUris;

  /// Creates a new [ExternalDataConfiguration].
  /// [autodetect] Try to detect schema and format options automatically. Any option specified explicitly will be honored.
  /// [avroOptions] Additional properties to set if sourceFormat is set to Avro.
  /// [bigtableOptions] [Optional] Additional options if sourceFormat is set to BIGTABLE.
  /// [compression] [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  /// [connectionId] [Optional, Trusted Tester] Connection for external data source.
  /// [csvOptions] Additional properties to set if sourceFormat is set to CSV.
  /// [decimalTargetTypes] [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  /// [fileSetSpecType] [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  /// [googleSheetsOptions] [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  /// [hivePartitioningOptions] [Optional] Options to configure hive partitioning support.
  /// [ignoreUnknownValues] [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  /// [jsonOptions] Additional properties to set if `sourceFormat` is set to `NEWLINE_DELIMITED_JSON`.
  /// [maxBadRecords] [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  /// [metadataCacheMode] [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  /// [objectMetadata] ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
  /// [parquetOptions] Additional properties to set if sourceFormat is set to Parquet.
  /// [referenceFileSchemaUri] [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
  /// [schema] [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  /// [sourceFormat] [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  /// [sourceUris] [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  ExternalDataConfiguration({
    this.autodetect,
    this.avroOptions,
    this.bigtableOptions,
    this.compression,
    this.connectionId,
    this.csvOptions,
    this.decimalTargetTypes,
    this.fileSetSpecType,
    this.googleSheetsOptions,
    this.hivePartitioningOptions,
    this.ignoreUnknownValues,
    this.jsonOptions,
    this.maxBadRecords,
    this.metadataCacheMode,
    this.objectMetadata,
    this.parquetOptions,
    this.referenceFileSchemaUri,
    this.schema,
    this.sourceFormat,
    this.sourceUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodetect': ?autodetect,
      'avroOptions': ?pulumi.Input.mapOptionalInputValue<AvroOptions, Map<String, dynamic>>(avroOptions, (value) => value.toMap()),
      'bigtableOptions': ?pulumi.Input.mapOptionalInputValue<BigtableOptions, Map<String, dynamic>>(bigtableOptions, (value) => value.toMap()),
      'compression': ?compression,
      'connectionId': ?connectionId,
      'csvOptions': ?pulumi.Input.mapOptionalInputValue<CsvOptions, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'decimalTargetTypes': ?decimalTargetTypes,
      'fileSetSpecType': ?fileSetSpecType,
      'googleSheetsOptions': ?pulumi.Input.mapOptionalInputValue<GoogleSheetsOptions, Map<String, dynamic>>(googleSheetsOptions, (value) => value.toMap()),
      'hivePartitioningOptions': ?pulumi.Input.mapOptionalInputValue<HivePartitioningOptions, Map<String, dynamic>>(hivePartitioningOptions, (value) => value.toMap()),
      'ignoreUnknownValues': ?ignoreUnknownValues,
      'jsonOptions': ?pulumi.Input.mapOptionalInputValue<JsonOptions, Map<String, dynamic>>(jsonOptions, (value) => value.toMap()),
      'maxBadRecords': ?maxBadRecords,
      'metadataCacheMode': ?metadataCacheMode,
      'objectMetadata': ?objectMetadata,
      'parquetOptions': ?pulumi.Input.mapOptionalInputValue<ParquetOptions, Map<String, dynamic>>(parquetOptions, (value) => value.toMap()),
      'referenceFileSchemaUri': ?referenceFileSchemaUri,
      'schema': ?pulumi.Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'sourceFormat': ?sourceFormat,
      'sourceUris': ?sourceUris,
    };
  }

  factory ExternalDataConfiguration.fromMap(Map<String, dynamic> map) {
    return ExternalDataConfiguration(
      autodetect: map['autodetect'] == null ? null : (map['autodetect'] as bool).input(),
      avroOptions: map['avroOptions'] == null ? null : (AvroOptions.fromMap((map['avroOptions'] as Map).cast<String, dynamic>())).input(),
      bigtableOptions: map['bigtableOptions'] == null ? null : (BigtableOptions.fromMap((map['bigtableOptions'] as Map).cast<String, dynamic>())).input(),
      compression: map['compression'] == null ? null : (map['compression'] as String).input(),
      connectionId: map['connectionId'] == null ? null : (map['connectionId'] as String).input(),
      csvOptions: map['csvOptions'] == null ? null : (CsvOptions.fromMap((map['csvOptions'] as Map).cast<String, dynamic>())).input(),
      decimalTargetTypes: map['decimalTargetTypes'] == null ? null : ((map['decimalTargetTypes'] as List).cast<String>()).input(),
      fileSetSpecType: map['fileSetSpecType'] == null ? null : (map['fileSetSpecType'] as String).input(),
      googleSheetsOptions: map['googleSheetsOptions'] == null ? null : (GoogleSheetsOptions.fromMap((map['googleSheetsOptions'] as Map).cast<String, dynamic>())).input(),
      hivePartitioningOptions: map['hivePartitioningOptions'] == null ? null : (HivePartitioningOptions.fromMap((map['hivePartitioningOptions'] as Map).cast<String, dynamic>())).input(),
      ignoreUnknownValues: map['ignoreUnknownValues'] == null ? null : (map['ignoreUnknownValues'] as bool).input(),
      jsonOptions: map['jsonOptions'] == null ? null : (JsonOptions.fromMap((map['jsonOptions'] as Map).cast<String, dynamic>())).input(),
      maxBadRecords: map['maxBadRecords'] == null ? null : (map['maxBadRecords'] as int).input(),
      metadataCacheMode: map['metadataCacheMode'] == null ? null : (map['metadataCacheMode'] as String).input(),
      objectMetadata: map['objectMetadata'] == null ? null : (map['objectMetadata'] as String).input(),
      parquetOptions: map['parquetOptions'] == null ? null : (ParquetOptions.fromMap((map['parquetOptions'] as Map).cast<String, dynamic>())).input(),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] == null ? null : (map['referenceFileSchemaUri'] as String).input(),
      schema: map['schema'] == null ? null : (TableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())).input(),
      sourceFormat: map['sourceFormat'] == null ? null : (map['sourceFormat'] as String).input(),
      sourceUris: map['sourceUris'] == null ? null : ((map['sourceUris'] as List).cast<String>()).input(),
    );
  }
}

