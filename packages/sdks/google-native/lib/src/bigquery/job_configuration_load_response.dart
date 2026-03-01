// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clustering_response.dart';
import 'connection_property_response.dart';
import 'destination_table_properties_response.dart';
import 'encryption_configuration_response.dart';
import 'hive_partitioning_options_response.dart';
import 'parquet_options_response.dart';
import 'range_partitioning_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';
import 'time_partitioning_response.dart';

class JobConfigurationLoadResponse {
  /// [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  final bool allowJaggedRows;
  /// Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  final bool allowQuotedNewlines;
  /// [Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  final bool autodetect;
  /// [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  final ClusteringResponse clustering;
  /// Connection properties.
  final List<ConnectionPropertyResponse> connectionProperties;
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final String createDisposition;
  /// If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs the load job in non-session mode.
  final bool createSession;
  /// [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  final List<String> decimalTargetTypes;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final EncryptionConfigurationResponse destinationEncryptionConfiguration;
  /// [Required] The destination table to load the data into.
  final TableReferenceResponse destinationTable;
  /// [Beta] [Optional] Properties with which to create the destination table if it is new.
  final DestinationTablePropertiesResponse destinationTableProperties;
  /// [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  final String encoding;
  /// [Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (',').
  final String fieldDelimiter;
  /// [Optional] Specifies how source URIs are interpreted for constructing the file set to load. By default source URIs are expanded against the underlying storage. Other options include specifying manifest files. Only applicable to object storage systems.
  final String fileSetSpecType;
  /// [Optional] Options to configure hive partitioning support.
  final HivePartitioningOptionsResponse hivePartitioningOptions;
  /// [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names
  final bool ignoreUnknownValues;
  /// [Optional] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON. For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.
  final String jsonExtension;
  /// [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid.
  final int maxBadRecords;
  /// [Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify "\N", BigQuery interprets "\N" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.
  final String nullMarker;
  /// [Optional] Options to configure parquet support.
  final ParquetOptionsResponse parquetOptions;
  /// [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\x00' to '\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.
  final bool preserveAsciiControlCharacters;
  /// If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  final List<String> projectionFields;
  /// [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  final String quote;
  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final RangePartitioningResponse rangePartitioning;
  /// User provided referencing file with the expected reader schema, Available for the format: AVRO, PARQUET, ORC.
  final String referenceFileSchemaUri;
  /// [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore.
  final TableSchemaResponse schema;
  /// [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
  final String schemaInline;
  /// [Deprecated] The format of the schemaInline property.
  final String schemaInlineFormat;
  /// Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final List<String> schemaUpdateOptions;
  /// [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped.
  final int skipLeadingRows;
  /// [Optional] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET". For orc, specify "ORC". The default value is CSV.
  final String sourceFormat;
  /// [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  final List<String> sourceUris;
  /// Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  final TimePartitioningResponse timePartitioning;
  /// [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final bool useAvroLogicalTypes;
  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final String writeDisposition;

  /// Creates a new [JobConfigurationLoadResponse].
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
  JobConfigurationLoadResponse({
    required this.allowJaggedRows,
    required this.allowQuotedNewlines,
    required this.autodetect,
    required this.clustering,
    required this.connectionProperties,
    required this.createDisposition,
    required this.createSession,
    required this.decimalTargetTypes,
    required this.destinationEncryptionConfiguration,
    required this.destinationTable,
    required this.destinationTableProperties,
    required this.encoding,
    required this.fieldDelimiter,
    required this.fileSetSpecType,
    required this.hivePartitioningOptions,
    required this.ignoreUnknownValues,
    required this.jsonExtension,
    required this.maxBadRecords,
    required this.nullMarker,
    required this.parquetOptions,
    required this.preserveAsciiControlCharacters,
    required this.projectionFields,
    required this.quote,
    required this.rangePartitioning,
    required this.referenceFileSchemaUri,
    required this.schema,
    required this.schemaInline,
    required this.schemaInlineFormat,
    required this.schemaUpdateOptions,
    required this.skipLeadingRows,
    required this.sourceFormat,
    required this.sourceUris,
    required this.timePartitioning,
    required this.useAvroLogicalTypes,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowJaggedRows': allowJaggedRows,
      'allowQuotedNewlines': allowQuotedNewlines,
      'autodetect': autodetect,
      'clustering': clustering.toMap(),
      'connectionProperties': pulumi.Input.encodeList<ConnectionPropertyResponse, Map<String, dynamic>>(connectionProperties, (value) => value.toMap()),
      'createDisposition': createDisposition,
      'createSession': createSession,
      'decimalTargetTypes': decimalTargetTypes,
      'destinationEncryptionConfiguration': destinationEncryptionConfiguration.toMap(),
      'destinationTable': destinationTable.toMap(),
      'destinationTableProperties': destinationTableProperties.toMap(),
      'encoding': encoding,
      'fieldDelimiter': fieldDelimiter,
      'fileSetSpecType': fileSetSpecType,
      'hivePartitioningOptions': hivePartitioningOptions.toMap(),
      'ignoreUnknownValues': ignoreUnknownValues,
      'jsonExtension': jsonExtension,
      'maxBadRecords': maxBadRecords,
      'nullMarker': nullMarker,
      'parquetOptions': parquetOptions.toMap(),
      'preserveAsciiControlCharacters': preserveAsciiControlCharacters,
      'projectionFields': projectionFields,
      'quote': quote,
      'rangePartitioning': rangePartitioning.toMap(),
      'referenceFileSchemaUri': referenceFileSchemaUri,
      'schema': schema.toMap(),
      'schemaInline': schemaInline,
      'schemaInlineFormat': schemaInlineFormat,
      'schemaUpdateOptions': schemaUpdateOptions,
      'skipLeadingRows': skipLeadingRows,
      'sourceFormat': sourceFormat,
      'sourceUris': sourceUris,
      'timePartitioning': timePartitioning.toMap(),
      'useAvroLogicalTypes': useAvroLogicalTypes,
      'writeDisposition': writeDisposition,
    };
  }

  factory JobConfigurationLoadResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationLoadResponse(
      allowJaggedRows: map['allowJaggedRows'] as bool,
      allowQuotedNewlines: map['allowQuotedNewlines'] as bool,
      autodetect: map['autodetect'] as bool,
      clustering: ClusteringResponse.fromMap((map['clustering'] as Map).cast<String, dynamic>()),
      connectionProperties: pulumi.Input.decodeList<ConnectionPropertyResponse>(map['connectionProperties'], (value) => ConnectionPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      createDisposition: map['createDisposition'] as String,
      createSession: map['createSession'] as bool,
      decimalTargetTypes: (map['decimalTargetTypes'] as List).cast<String>(),
      destinationEncryptionConfiguration: EncryptionConfigurationResponse.fromMap((map['destinationEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      destinationTable: TableReferenceResponse.fromMap((map['destinationTable'] as Map).cast<String, dynamic>()),
      destinationTableProperties: DestinationTablePropertiesResponse.fromMap((map['destinationTableProperties'] as Map).cast<String, dynamic>()),
      encoding: map['encoding'] as String,
      fieldDelimiter: map['fieldDelimiter'] as String,
      fileSetSpecType: map['fileSetSpecType'] as String,
      hivePartitioningOptions: HivePartitioningOptionsResponse.fromMap((map['hivePartitioningOptions'] as Map).cast<String, dynamic>()),
      ignoreUnknownValues: map['ignoreUnknownValues'] as bool,
      jsonExtension: map['jsonExtension'] as String,
      maxBadRecords: map['maxBadRecords'] as int,
      nullMarker: map['nullMarker'] as String,
      parquetOptions: ParquetOptionsResponse.fromMap((map['parquetOptions'] as Map).cast<String, dynamic>()),
      preserveAsciiControlCharacters: map['preserveAsciiControlCharacters'] as bool,
      projectionFields: (map['projectionFields'] as List).cast<String>(),
      quote: map['quote'] as String,
      rangePartitioning: RangePartitioningResponse.fromMap((map['rangePartitioning'] as Map).cast<String, dynamic>()),
      referenceFileSchemaUri: map['referenceFileSchemaUri'] as String,
      schema: TableSchemaResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      schemaInline: map['schemaInline'] as String,
      schemaInlineFormat: map['schemaInlineFormat'] as String,
      schemaUpdateOptions: (map['schemaUpdateOptions'] as List).cast<String>(),
      skipLeadingRows: map['skipLeadingRows'] as int,
      sourceFormat: map['sourceFormat'] as String,
      sourceUris: (map['sourceUris'] as List).cast<String>(),
      timePartitioning: TimePartitioningResponse.fromMap((map['timePartitioning'] as Map).cast<String, dynamic>()),
      useAvroLogicalTypes: map['useAvroLogicalTypes'] as bool,
      writeDisposition: map['writeDisposition'] as String,
    );
  }
}

