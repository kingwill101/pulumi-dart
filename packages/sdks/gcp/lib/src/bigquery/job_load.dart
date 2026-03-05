// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_load_destination_encryption_configuration.dart';
import 'job_load_destination_table.dart';
import 'job_load_parquet_options.dart';
import 'job_load_time_partitioning.dart';

class JobLoad {
  /// Accept rows that are missing trailing optional columns. The missing values are treated as nulls.
  /// If false, records with missing trailing columns are treated as bad records, and if there are too many bad records,
  /// an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  final pulumi.Input<bool>? allowJaggedRows;
  /// Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file.
  /// The default value is false.
  final pulumi.Input<bool>? allowQuotedNewlines;
  /// Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  final pulumi.Input<bool>? autodetect;
  /// Specifies whether the job is allowed to create new tables. The following values are supported:
  /// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
  /// CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
  /// Creation, truncation and append actions occur as one atomic update upon job completion
  /// Default value is `CREATE_IF_NEEDED`.
  /// Possible values are: `CREATE_IF_NEEDED`, `CREATE_NEVER`.
  final pulumi.Input<String>? createDisposition;
  /// Custom encryption configuration (e.g., Cloud KMS keys)
  /// Structure is documented below.
  final pulumi.Input<JobLoadDestinationEncryptionConfiguration>? destinationEncryptionConfiguration;
  /// The destination table to load the data into.
  /// Structure is documented below.
  final pulumi.Input<JobLoadDestinationTable> destinationTable;
  /// The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
  /// The default value is UTF-8. BigQuery decodes the data after the raw, binary data
  /// has been split using the values of the quote and fieldDelimiter properties.
  final pulumi.Input<String>? encoding;
  /// The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character.
  /// To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts
  /// the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the
  /// data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator.
  /// The default value is a comma (',').
  final pulumi.Input<String>? fieldDelimiter;
  /// Indicates if BigQuery should allow extra values that are not represented in the table schema.
  /// If true, the extra values are ignored. If false, records with extra columns are treated as bad records,
  /// and if there are too many bad records, an invalid error is returned in the job result.
  /// The default value is false. The sourceFormat property determines what BigQuery treats as an extra value:
  /// CSV: Trailing columns
  /// JSON: Named values that don't match any column names
  final pulumi.Input<bool>? ignoreUnknownValues;
  /// If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON.
  /// For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited
  /// GeoJSON: set to GEOJSON.
  final pulumi.Input<String>? jsonExtension;
  /// The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value,
  /// an invalid error is returned in the job result. The default value is 0, which requires that all records are valid.
  final pulumi.Input<int>? maxBadRecords;
  /// Specifies a string that represents a null value in a CSV file. The default value is the empty string. If you set this
  /// property to a custom value, BigQuery throws an error if an
  /// empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as
  /// an empty value.
  final pulumi.Input<String>? nullMarker;
  /// Parquet Options for load and make external tables.
  /// Structure is documented below.
  final pulumi.Input<JobLoadParquetOptions>? parquetOptions;
  /// If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup.
  /// Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties.
  /// If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  final pulumi.Input<List<String>>? projectionFields;
  /// The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding,
  /// and then uses the first byte of the encoded string to split the data in its raw, binary state.
  /// The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string.
  /// If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  final pulumi.Input<String>? quote;
  /// Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or
  /// supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
  /// when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators.
  /// For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified:
  /// ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
  /// ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final pulumi.Input<List<String>>? schemaUpdateOptions;
  /// The number of rows at the top of a CSV file that BigQuery will skip when loading the data.
  /// The default value is 0. This property is useful if you have header rows in the file that should be skipped.
  /// When autodetect is on, the behavior is the following:
  /// skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected,
  /// the row is read as data. Otherwise data is read starting from the second row.
  /// skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row.
  /// skipLeadingRows = N &gt; 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected,
  /// row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  final pulumi.Input<int>? skipLeadingRows;
  /// The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP".
  /// For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET".
  /// For orc, specify "ORC". [Beta] For Bigtable, specify "BIGTABLE".
  /// The default value is CSV.
  final pulumi.Input<String>? sourceFormat;
  /// The fully-qualified URIs that point to your data in Google Cloud.
  /// For Google Cloud Storage URIs: Each URI can contain one '\*' wildcard character
  /// and it must come after the 'bucket' name. Size limits related to load jobs apply
  /// to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be
  /// specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table.
  /// For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '\*' wildcard character is not allowed.
  final pulumi.Input<List<String>> sourceUris;
  /// Time-based partitioning specification for the destination table.
  /// Structure is documented below.
  final pulumi.Input<JobLoadTimePartitioning>? timePartitioning;
  /// Specifies the action that occurs if the destination table already exists. The following values are supported:
  /// WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
  /// WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
  /// WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
  /// Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon job completion.
  /// Default value is `WRITE_EMPTY`.
  /// Possible values are: `WRITE_TRUNCATE`, `WRITE_APPEND`, `WRITE_EMPTY`.
  final pulumi.Input<String>? writeDisposition;

  /// Creates a new [JobLoad].
  /// [allowJaggedRows] Accept rows that are missing trailing optional columns. The missing values are treated as nulls.
  /// [allowQuotedNewlines] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file.
  /// [autodetect] Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  /// [createDisposition] Specifies whether the job is allowed to create new tables. The following values are supported:
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys)
  /// [destinationTable] The destination table to load the data into.
  /// [encoding] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
  /// [fieldDelimiter] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character.
  /// [ignoreUnknownValues] Indicates if BigQuery should allow extra values that are not represented in the table schema.
  /// [jsonExtension] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON.
  /// [maxBadRecords] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value,
  /// [nullMarker] Specifies a string that represents a null value in a CSV file. The default value is the empty string. If you set this
  /// [parquetOptions] Parquet Options for load and make external tables.
  /// [projectionFields] If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup.
  /// [quote] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding,
  /// [schemaUpdateOptions] Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or
  /// [skipLeadingRows] The number of rows at the top of a CSV file that BigQuery will skip when loading the data.
  /// [sourceFormat] The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP".
  /// [sourceUris] The fully-qualified URIs that point to your data in Google Cloud.
  /// [timePartitioning] Time-based partitioning specification for the destination table.
  /// [writeDisposition] Specifies the action that occurs if the destination table already exists. The following values are supported:
  JobLoad({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.autodetect,
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    required this.destinationTable,
    this.encoding,
    this.fieldDelimiter,
    this.ignoreUnknownValues,
    this.jsonExtension,
    this.maxBadRecords,
    this.nullMarker,
    this.parquetOptions,
    this.projectionFields,
    this.quote,
    this.schemaUpdateOptions,
    this.skipLeadingRows,
    this.sourceFormat,
    required this.sourceUris,
    this.timePartitioning,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowJaggedRows': ?allowJaggedRows,
      'allowQuotedNewlines': ?allowQuotedNewlines,
      'autodetect': ?autodetect,
      'createDisposition': ?createDisposition,
      'destinationEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<JobLoadDestinationEncryptionConfiguration, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationTable': pulumi.Input.mapInputValue<JobLoadDestinationTable, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'encoding': ?encoding,
      'fieldDelimiter': ?fieldDelimiter,
      'ignoreUnknownValues': ?ignoreUnknownValues,
      'jsonExtension': ?jsonExtension,
      'maxBadRecords': ?maxBadRecords,
      'nullMarker': ?nullMarker,
      'parquetOptions': ?pulumi.Input.mapOptionalInputValue<JobLoadParquetOptions, Map<String, dynamic>>(parquetOptions, (value) => value.toMap()),
      'projectionFields': ?projectionFields,
      'quote': ?quote,
      'schemaUpdateOptions': ?schemaUpdateOptions,
      'skipLeadingRows': ?skipLeadingRows,
      'sourceFormat': ?sourceFormat,
      'sourceUris': sourceUris,
      'timePartitioning': ?pulumi.Input.mapOptionalInputValue<JobLoadTimePartitioning, Map<String, dynamic>>(timePartitioning, (value) => value.toMap()),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobLoad.fromMap(Map<String, dynamic> map) {
    return JobLoad(
      allowJaggedRows: (() { final guardedValue = map['allowJaggedRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowQuotedNewlines: (() { final guardedValue = map['allowQuotedNewlines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autodetect: (() { final guardedValue = map['autodetect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createDisposition: (() { final guardedValue = map['createDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEncryptionConfiguration: (() { final guardedValue = map['destinationEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobLoadDestinationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationTable: pulumi.Input.fromValue(JobLoadDestinationTable.fromMap((map['destinationTable']! as Map).cast<String, dynamic>())),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreUnknownValues: (() { final guardedValue = map['ignoreUnknownValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jsonExtension: (() { final guardedValue = map['jsonExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBadRecords: (() { final guardedValue = map['maxBadRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nullMarker: (() { final guardedValue = map['nullMarker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parquetOptions: (() { final guardedValue = map['parquetOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobLoadParquetOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectionFields: (() { final guardedValue = map['projectionFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      quote: (() { final guardedValue = map['quote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaUpdateOptions: (() { final guardedValue = map['schemaUpdateOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skipLeadingRows: (() { final guardedValue = map['skipLeadingRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceFormat: (() { final guardedValue = map['sourceFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUris: pulumi.Input.fromValue((map['sourceUris'] as List).cast<String>()),
      timePartitioning: (() { final guardedValue = map['timePartitioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobLoadTimePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeDisposition: (() { final guardedValue = map['writeDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

