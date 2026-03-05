// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_data_configuration_avro_options.dart';
import 'table_external_data_configuration_bigtable_options.dart';
import 'table_external_data_configuration_csv_options.dart';
import 'table_external_data_configuration_google_sheets_options.dart';
import 'table_external_data_configuration_hive_partitioning_options.dart';
import 'table_external_data_configuration_json_options.dart';
import 'table_external_data_configuration_parquet_options.dart';

class TableExternalDataConfiguration {
  /// Let BigQuery try to autodetect the schema
  /// and format of the table.
  final pulumi.Input<bool> autodetect;
  /// Additional options if `source_format` is set to
  /// "AVRO".  Structure is documented below.
  final pulumi.Input<TableExternalDataConfigurationAvroOptions>? avroOptions;
  /// Additional properties to set if
  /// `source_format` is set to "BIGTABLE". Structure is documented below.
  final pulumi.Input<TableExternalDataConfigurationBigtableOptions>? bigtableOptions;
  /// The compression type of the data source.
  /// Valid values are "NONE" or "GZIP".
  final pulumi.Input<String>? compression;
  /// The connection specifying the credentials to be used to read
  /// external storage, such as Azure Blob, Cloud Storage, or S3. The `connection_id` can have
  /// the form `{{project}}.{{location}}.{{connection_id}}`
  /// or `projects/{{project}}/locations/{{location}}/connections/{{connection_id}}`.
  ///
  /// ~&gt;**NOTE:** If you set `external_data_configuration.connection_id`, the
  /// table schema must be specified using the top-level `schema` field
  /// documented above.
  final pulumi.Input<String>? connectionId;
  /// Additional properties to set if
  /// `source_format` is set to "CSV". Structure is documented below.
  final pulumi.Input<TableExternalDataConfigurationCsvOptions>? csvOptions;
  /// Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown.
  ///
  /// Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is:
  ///
  /// (38,9) &gt; NUMERIC;
  /// (39,9) &gt; BIGNUMERIC (NUMERIC cannot hold 30 integer digits);
  /// (38,10) &gt; BIGNUMERIC (NUMERIC cannot hold 10 fractional digits);
  /// (76,38) &gt; BIGNUMERIC;
  /// (77,38) &gt; BIGNUMERIC (error if value exceeds supported range).
  ///
  /// This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC.
  ///
  /// Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final pulumi.Input<List<String>>? decimalTargetTypes;
  /// Specifies how source URIs are interpreted for constructing the file set to load.
  /// By default source URIs are expanded against the underlying storage.
  /// Other options include specifying manifest files. Only applicable to object storage systems. Docs
  final pulumi.Input<String>? fileSetSpecType;
  /// Additional options if
  /// `source_format` is set to "GOOGLE_SHEETS". Structure is
  /// documented below.
  final pulumi.Input<TableExternalDataConfigurationGoogleSheetsOptions>? googleSheetsOptions;
  /// When set, configures hive partitioning
  /// support. Not all storage formats support hive partitioning -- requesting hive
  /// partitioning on an unsupported format will lead to an error, as will providing
  /// an invalid specification. Structure is documented below.
  final pulumi.Input<TableExternalDataConfigurationHivePartitioningOptions>? hivePartitioningOptions;
  /// Indicates if BigQuery should
  /// allow extra values that are not represented in the table schema.
  /// If true, the extra values are ignored. If false, records with
  /// extra columns are treated as bad records, and if there are too
  /// many bad records, an invalid error is returned in the job result.
  /// The default value is false.
  final pulumi.Input<bool>? ignoreUnknownValues;
  /// Used to indicate that a JSON variant, rather than normal JSON, is being used as the sourceFormat. This should only be used in combination with the `JSON` source format. Valid values are: `GEOJSON`.
  final pulumi.Input<String>? jsonExtension;
  /// Additional properties to set if
  /// `source_format` is set to "JSON". Structure is documented below.
  final pulumi.Input<TableExternalDataConfigurationJsonOptions>? jsonOptions;
  /// The maximum number of bad records that
  /// BigQuery can ignore when reading data.
  final pulumi.Input<int>? maxBadRecords;
  /// Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. Valid values are `AUTOMATIC` and `MANUAL`.
  final pulumi.Input<String>? metadataCacheMode;
  /// Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If `object_metadata` is set, `source_format` should be omitted.
  final pulumi.Input<String>? objectMetadata;
  /// Additional properties to set if
  /// `source_format` is set to "PARQUET". Structure is documented below.
  final pulumi.Input<TableExternalDataConfigurationParquetOptions>? parquetOptions;
  /// When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  final pulumi.Input<String>? referenceFileSchemaUri;
  /// A JSON schema for the external table. Schema is required
  /// for CSV and JSON formats if autodetect is not on. Schema is disallowed
  /// for Google Cloud Bigtable, Cloud Datastore backups, Avro, Iceberg, ORC and Parquet formats.
  /// ~&gt;**NOTE:** Because this field expects a JSON string, any changes to the
  /// string will create a diff, even if the JSON itself hasn't changed.
  /// Furthermore drift for this field cannot not be detected because BigQuery
  /// only uses this schema to compute the effective schema for the table, therefore
  /// any changes on the configured value will force the table to be recreated.
  /// This schema is effectively only applied when creating a table from an external
  /// datasource, after creation the computed schema will be stored in
  /// `google_bigquery_table.schema`
  ///
  /// ~&gt;**NOTE:** If you set `external_data_configuration.connection_id`, the
  /// table schema must be specified using the top-level `schema` field
  /// documented above.
  final pulumi.Input<String>? schema;
  /// The data format. Please see sourceFormat under
  /// [ExternalDataConfiguration](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#externaldataconfiguration)
  /// in Bigquery's public API documentation for supported formats. To use "GOOGLE_SHEETS"
  /// the `scopes` must include "https://www.googleapis.com/auth/drive.readonly".
  final pulumi.Input<String>? sourceFormat;
  /// A list of the fully-qualified URIs that point to
  /// your data in Google Cloud.
  final pulumi.Input<List<String>> sourceUris;

  /// Creates a new [TableExternalDataConfiguration].
  /// [autodetect] Let BigQuery try to autodetect the schema
  /// [avroOptions] Additional options if `source_format` is set to
  /// [bigtableOptions] Additional properties to set if
  /// [compression] The compression type of the data source.
  /// [connectionId] The connection specifying the credentials to be used to read
  /// [csvOptions] Additional properties to set if
  /// [decimalTargetTypes] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown.
  /// [fileSetSpecType] Specifies how source URIs are interpreted for constructing the file set to load.
  /// [googleSheetsOptions] Additional options if
  /// [hivePartitioningOptions] When set, configures hive partitioning
  /// [ignoreUnknownValues] Indicates if BigQuery should
  /// [jsonExtension] Used to indicate that a JSON variant, rather than normal JSON, is being used as the sourceFormat. This should only be used in combination with the `JSON` source format. Valid values are: `GEOJSON`.
  /// [jsonOptions] Additional properties to set if
  /// [maxBadRecords] The maximum number of bad records that
  /// [metadataCacheMode] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source. Valid values are `AUTOMATIC` and `MANUAL`.
  /// [objectMetadata] Object Metadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the sourceUris. If `object_metadata` is set, `source_format` should be omitted.
  /// [parquetOptions] Additional properties to set if
  /// [referenceFileSchemaUri] When creating an external table, the user can provide a reference file with the table schema. This is enabled for the following formats: AVRO, PARQUET, ORC.
  /// [schema] A JSON schema for the external table. Schema is required
  /// [sourceFormat] The data format. Please see sourceFormat under
  /// [sourceUris] A list of the fully-qualified URIs that point to
  TableExternalDataConfiguration({
    required this.autodetect,
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
    this.jsonExtension,
    this.jsonOptions,
    this.maxBadRecords,
    this.metadataCacheMode,
    this.objectMetadata,
    this.parquetOptions,
    this.referenceFileSchemaUri,
    this.schema,
    this.sourceFormat,
    required this.sourceUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodetect': autodetect,
      'avroOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationAvroOptions, Map<String, dynamic>>(avroOptions, (value) => value.toMap()),
      'bigtableOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationBigtableOptions, Map<String, dynamic>>(bigtableOptions, (value) => value.toMap()),
      'compression': ?compression,
      'connectionId': ?connectionId,
      'csvOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationCsvOptions, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'decimalTargetTypes': ?decimalTargetTypes,
      'fileSetSpecType': ?fileSetSpecType,
      'googleSheetsOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationGoogleSheetsOptions, Map<String, dynamic>>(googleSheetsOptions, (value) => value.toMap()),
      'hivePartitioningOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationHivePartitioningOptions, Map<String, dynamic>>(hivePartitioningOptions, (value) => value.toMap()),
      'ignoreUnknownValues': ?ignoreUnknownValues,
      'jsonExtension': ?jsonExtension,
      'jsonOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationJsonOptions, Map<String, dynamic>>(jsonOptions, (value) => value.toMap()),
      'maxBadRecords': ?maxBadRecords,
      'metadataCacheMode': ?metadataCacheMode,
      'objectMetadata': ?objectMetadata,
      'parquetOptions': ?pulumi.Input.mapOptionalInputValue<TableExternalDataConfigurationParquetOptions, Map<String, dynamic>>(parquetOptions, (value) => value.toMap()),
      'referenceFileSchemaUri': ?referenceFileSchemaUri,
      'schema': ?schema,
      'sourceFormat': ?sourceFormat,
      'sourceUris': sourceUris,
    };
  }

  factory TableExternalDataConfiguration.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfiguration(
      autodetect: pulumi.Input.fromValue(map['autodetect'] as bool),
      avroOptions: (() { final guardedValue = map['avroOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationAvroOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bigtableOptions: (() { final guardedValue = map['bigtableOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationBigtableOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvOptions: (() { final guardedValue = map['csvOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationCsvOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      decimalTargetTypes: (() { final guardedValue = map['decimalTargetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileSetSpecType: (() { final guardedValue = map['fileSetSpecType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleSheetsOptions: (() { final guardedValue = map['googleSheetsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationGoogleSheetsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hivePartitioningOptions: (() { final guardedValue = map['hivePartitioningOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationHivePartitioningOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreUnknownValues: (() { final guardedValue = map['ignoreUnknownValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jsonExtension: (() { final guardedValue = map['jsonExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsonOptions: (() { final guardedValue = map['jsonOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationJsonOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxBadRecords: (() { final guardedValue = map['maxBadRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metadataCacheMode: (() { final guardedValue = map['metadataCacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectMetadata: (() { final guardedValue = map['objectMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parquetOptions: (() { final guardedValue = map['parquetOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalDataConfigurationParquetOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      referenceFileSchemaUri: (() { final guardedValue = map['referenceFileSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFormat: (() { final guardedValue = map['sourceFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUris: pulumi.Input.fromValue((map['sourceUris'] as List).cast<String>()),
    );
  }
}

