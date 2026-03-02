// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clustering.dart';
import 'connection_property.dart';
import 'destination_table_properties.dart';
import 'encryption_configuration.dart';
import 'hive_partitioning_options.dart';
import 'parquet_options.dart';
import 'range_partitioning.dart';
import 'table_reference.dart';
import 'table_schema.dart';
import 'time_partitioning.dart';

class JobConfigurationLoad {
  /// [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  final pulumi.Input<bool>? allowJaggedRows;
  /// Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  final pulumi.Input<bool>? allowQuotedNewlines;
  /// [Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  final pulumi.Input<bool>? autodetect;
  /// [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  final pulumi.Input<Clustering>? clustering;
  /// Connection properties.
  final pulumi.Input<List<ConnectionProperty>>? connectionProperties;
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String>? createDisposition;
  /// If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs the load job in non-session mode.
  final pulumi.Input<bool>? createSession;
  /// [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final pulumi.Input<List<String>>? decimalTargetTypes;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final pulumi.Input<EncryptionConfiguration>? destinationEncryptionConfiguration;
  /// [Required] The destination table to load the data into.
  final pulumi.Input<TableReference>? destinationTable;
  /// [Beta] [Optional] Properties with which to create the destination table if it is new.
  final pulumi.Input<DestinationTableProperties>? destinationTableProperties;
  /// [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  final pulumi.Input<String>? encoding;
  /// [Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (',').
  final pulumi.Input<String>? fieldDelimiter;
  /// [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  final pulumi.Input<String>? fileSetSpecType;
  /// [Optional] Options to configure hive partitioning support.
  final pulumi.Input<HivePartitioningOptions>? hivePartitioningOptions;
  /// [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names
  final pulumi.Input<bool>? ignoreUnknownValues;
  /// [Optional] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON. For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.
  final pulumi.Input<String>? jsonExtension;
  /// [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid.
  final pulumi.Input<int>? maxBadRecords;
  /// [Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify "\N", BigQuery interprets "\N" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.
  final pulumi.Input<String>? nullMarker;
  /// [Optional] Options to configure parquet support.
  final pulumi.Input<ParquetOptions>? parquetOptions;
  /// [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\x00' to '\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.
  final pulumi.Input<bool>? preserveAsciiControlCharacters;
  /// If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  final pulumi.Input<List<String>>? projectionFields;
  /// [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  final pulumi.Input<String>? quote;
  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<RangePartitioning>? rangePartitioning;
  /// User provided referencing file with the expected reader schema, Available for the format: AVRO, PARQUET, ORC.
  final pulumi.Input<String>? referenceFileSchemaUri;
  /// [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore.
  final pulumi.Input<TableSchema>? schema;
  /// [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
  final pulumi.Input<String>? schemaInline;
  /// [Deprecated] The format of the schemaInline property.
  final pulumi.Input<String>? schemaInlineFormat;
  /// Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final pulumi.Input<List<String>>? schemaUpdateOptions;
  /// [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped.
  final pulumi.Input<int>? skipLeadingRows;
  /// [Optional] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET". For orc, specify "ORC". The default value is CSV.
  final pulumi.Input<String>? sourceFormat;
  /// [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  final pulumi.Input<List<String>>? sourceUris;
  /// Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<TimePartitioning>? timePartitioning;
  /// [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final pulumi.Input<bool>? useAvroLogicalTypes;
  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String>? writeDisposition;

  /// Creates a new [JobConfigurationLoad].
  /// [allowJaggedRows] [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  /// [allowQuotedNewlines] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  /// [autodetect] [Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  /// [clustering] [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  /// [connectionProperties] Connection properties.
  /// [createDisposition] [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  /// [createSession] If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs the load job in non-session mode.
  /// [decimalTargetTypes] [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [destinationTable] [Required] The destination table to load the data into.
  /// [destinationTableProperties] [Beta] [Optional] Properties with which to create the destination table if it is new.
  /// [encoding] [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  /// [fieldDelimiter] [Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (',').
  /// [fileSetSpecType] [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  /// [hivePartitioningOptions] [Optional] Options to configure hive partitioning support.
  /// [ignoreUnknownValues] [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names
  /// [jsonExtension] [Optional] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON. For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.
  /// [maxBadRecords] [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid.
  /// [nullMarker] [Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify "\N", BigQuery interprets "\N" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.
  /// [parquetOptions] [Optional] Options to configure parquet support.
  /// [preserveAsciiControlCharacters] [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\x00' to '\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.
  /// [projectionFields] If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  /// [quote] [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  /// [rangePartitioning] [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [referenceFileSchemaUri] User provided referencing file with the expected reader schema, Available for the format: AVRO, PARQUET, ORC.
  /// [schema] [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore.
  /// [schemaInline] [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
  /// [schemaInlineFormat] [Deprecated] The format of the schemaInline property.
  /// [schemaUpdateOptions] Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  /// [skipLeadingRows] [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped.
  /// [sourceFormat] [Optional] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET". For orc, specify "ORC". The default value is CSV.
  /// [sourceUris] [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  /// [timePartitioning] Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [useAvroLogicalTypes] [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  /// [writeDisposition] [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  JobConfigurationLoad({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.autodetect,
    this.clustering,
    this.connectionProperties,
    this.createDisposition,
    this.createSession,
    this.decimalTargetTypes,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.destinationTableProperties,
    this.encoding,
    this.fieldDelimiter,
    this.fileSetSpecType,
    this.hivePartitioningOptions,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.maxBadRecords,
    this.nullMarker,
    this.parquetOptions,
    this.preserveAsciiControlCharacters,
    this.projectionFields,
    this.quote,
    this.rangePartitioning,
    this.referenceFileSchemaUri,
    this.schema,
    this.schemaInline,
    this.schemaInlineFormat,
    this.schemaUpdateOptions,
    this.skipLeadingRows,
    this.sourceFormat,
    this.sourceUris,
    this.timePartitioning,
    this.useAvroLogicalTypes,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowJaggedRows': ?allowJaggedRows,
      'allowQuotedNewlines': ?allowQuotedNewlines,
      'autodetect': ?autodetect,
      'clustering': ?pulumi.Input.mapOptionalInputValue<Clustering, Map<String, dynamic>>(clustering, (value) => value.toMap()),
      'connectionProperties': ?pulumi.Input.mapOptionalInputValue<List<ConnectionProperty>, List<Map<String, dynamic>>>(connectionProperties, (value) => pulumi.Input.encodeList<ConnectionProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createDisposition': ?createDisposition,
      'createSession': ?createSession,
      'decimalTargetTypes': ?decimalTargetTypes,
      'destinationEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationTable': ?pulumi.Input.mapOptionalInputValue<TableReference, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'destinationTableProperties': ?pulumi.Input.mapOptionalInputValue<DestinationTableProperties, Map<String, dynamic>>(destinationTableProperties, (value) => value.toMap()),
      'encoding': ?encoding,
      'fieldDelimiter': ?fieldDelimiter,
      'fileSetSpecType': ?fileSetSpecType,
      'hivePartitioningOptions': ?pulumi.Input.mapOptionalInputValue<HivePartitioningOptions, Map<String, dynamic>>(hivePartitioningOptions, (value) => value.toMap()),
      'ignoreUnknownValues': ?ignoreUnknownValues,
      'jsonExtension': ?jsonExtension,
      'maxBadRecords': ?maxBadRecords,
      'nullMarker': ?nullMarker,
      'parquetOptions': ?pulumi.Input.mapOptionalInputValue<ParquetOptions, Map<String, dynamic>>(parquetOptions, (value) => value.toMap()),
      'preserveAsciiControlCharacters': ?preserveAsciiControlCharacters,
      'projectionFields': ?projectionFields,
      'quote': ?quote,
      'rangePartitioning': ?pulumi.Input.mapOptionalInputValue<RangePartitioning, Map<String, dynamic>>(rangePartitioning, (value) => value.toMap()),
      'referenceFileSchemaUri': ?referenceFileSchemaUri,
      'schema': ?pulumi.Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'schemaInline': ?schemaInline,
      'schemaInlineFormat': ?schemaInlineFormat,
      'schemaUpdateOptions': ?schemaUpdateOptions,
      'skipLeadingRows': ?skipLeadingRows,
      'sourceFormat': ?sourceFormat,
      'sourceUris': ?sourceUris,
      'timePartitioning': ?pulumi.Input.mapOptionalInputValue<TimePartitioning, Map<String, dynamic>>(timePartitioning, (value) => value.toMap()),
      'useAvroLogicalTypes': ?useAvroLogicalTypes,
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobConfigurationLoad.fromMap(Map<String, dynamic> map) {
    return JobConfigurationLoad(
      allowJaggedRows: map['allowJaggedRows'] == null ? null : (map['allowJaggedRows'] as bool).input(),
      allowQuotedNewlines: map['allowQuotedNewlines'] == null ? null : (map['allowQuotedNewlines'] as bool).input(),
      autodetect: map['autodetect'] == null ? null : (map['autodetect'] as bool).input(),
      clustering: map['clustering'] == null ? null : (Clustering.fromMap((map['clustering'] as Map).cast<String, dynamic>())).input(),
      connectionProperties: map['connectionProperties'] == null ? null : (pulumi.Input.decodeList<ConnectionProperty>(map['connectionProperties'], (value) => ConnectionProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createDisposition: map['createDisposition'] == null ? null : (map['createDisposition'] as String).input(),
      createSession: map['createSession'] == null ? null : (map['createSession'] as bool).input(),
      decimalTargetTypes: map['decimalTargetTypes'] == null ? null : ((map['decimalTargetTypes'] as List).cast<String>()).input(),
      destinationEncryptionConfiguration: map['destinationEncryptionConfiguration'] == null ? null : (EncryptionConfiguration.fromMap((map['destinationEncryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      destinationTable: map['destinationTable'] == null ? null : (TableReference.fromMap((map['destinationTable'] as Map).cast<String, dynamic>())).input(),
      destinationTableProperties: map['destinationTableProperties'] == null ? null : (DestinationTableProperties.fromMap((map['destinationTableProperties'] as Map).cast<String, dynamic>())).input(),
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : (map['fieldDelimiter'] as String).input(),
      fileSetSpecType: map['fileSetSpecType'] == null ? null : (map['fileSetSpecType'] as String).input(),
      hivePartitioningOptions: map['hivePartitioningOptions'] == null ? null : (HivePartitioningOptions.fromMap((map['hivePartitioningOptions'] as Map).cast<String, dynamic>())).input(),
      ignoreUnknownValues: map['ignoreUnknownValues'] == null ? null : (map['ignoreUnknownValues'] as bool).input(),
      jsonExtension: map['jsonExtension'] == null ? null : (map['jsonExtension'] as String).input(),
      maxBadRecords: map['maxBadRecords'] == null ? null : (map['maxBadRecords'] as int).input(),
      nullMarker: map['nullMarker'] == null ? null : (map['nullMarker'] as String).input(),
      parquetOptions: map['parquetOptions'] == null ? null : (ParquetOptions.fromMap((map['parquetOptions'] as Map).cast<String, dynamic>())).input(),
      preserveAsciiControlCharacters: map['preserveAsciiControlCharacters'] == null ? null : (map['preserveAsciiControlCharacters'] as bool).input(),
      projectionFields: map['projectionFields'] == null ? null : ((map['projectionFields'] as List).cast<String>()).input(),
      quote: map['quote'] == null ? null : (map['quote'] as String).input(),
      rangePartitioning: map['rangePartitioning'] == null ? null : (RangePartitioning.fromMap((map['rangePartitioning'] as Map).cast<String, dynamic>())).input(),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] == null ? null : (map['referenceFileSchemaUri'] as String).input(),
      schema: map['schema'] == null ? null : (TableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())).input(),
      schemaInline: map['schemaInline'] == null ? null : (map['schemaInline'] as String).input(),
      schemaInlineFormat: map['schemaInlineFormat'] == null ? null : (map['schemaInlineFormat'] as String).input(),
      schemaUpdateOptions: map['schemaUpdateOptions'] == null ? null : ((map['schemaUpdateOptions'] as List).cast<String>()).input(),
      skipLeadingRows: map['skipLeadingRows'] == null ? null : (map['skipLeadingRows'] as int).input(),
      sourceFormat: map['sourceFormat'] == null ? null : (map['sourceFormat'] as String).input(),
      sourceUris: map['sourceUris'] == null ? null : ((map['sourceUris'] as List).cast<String>()).input(),
      timePartitioning: map['timePartitioning'] == null ? null : (TimePartitioning.fromMap((map['timePartitioning'] as Map).cast<String, dynamic>())).input(),
      useAvroLogicalTypes: map['useAvroLogicalTypes'] == null ? null : (map['useAvroLogicalTypes'] as bool).input(),
      writeDisposition: map['writeDisposition'] == null ? null : (map['writeDisposition'] as String).input(),
    );
  }
}

