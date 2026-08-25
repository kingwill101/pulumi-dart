// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_query_connection_property.dart';
import 'job_query_default_dataset.dart';
import 'job_query_destination_encryption_configuration.dart';
import 'job_query_destination_table.dart';
import 'job_query_script_options.dart';
import 'job_query_user_defined_function_resource.dart';

class JobQuery {
  /// If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.
  /// Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed.
  /// However, you must still set destinationTable when result size exceeds the allowed maximum response size.
  final pulumi.Input<bool?>? allowLargeResults;
  /// Connection properties to customize query behavior. Under JDBC, these correspond
  /// directly to connection properties passed to the DriverManager. Under ODBC, these
  /// correspond to properties in the connection string.
  /// Structure is documented below.
  final pulumi.Input<List<JobQueryConnectionProperty>?>? connectionProperties;
  /// (Optional, Beta)
  /// Whether to run the query as continuous or a regular query.
  final pulumi.Input<bool?>? continuous;
  /// Specifies whether the job is allowed to create new tables. The following values are supported:
  /// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
  /// CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
  /// Creation, truncation and append actions occur as one atomic update upon job completion
  /// Default value is `CREATE_IF_NEEDED`.
  /// Possible values are: `CREATE_IF_NEEDED`, `CREATE_NEVER`.
  final pulumi.Input<String?>? createDisposition;
  /// Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  /// Structure is documented below.
  final pulumi.Input<JobQueryDefaultDataset?>? defaultDataset;
  /// Custom encryption configuration (e.g., Cloud KMS keys)
  /// Structure is documented below.
  final pulumi.Input<JobQueryDestinationEncryptionConfiguration?>? destinationEncryptionConfiguration;
  /// Describes the table where the query results should be stored.
  /// This property must be set for large results that exceed the maximum response size.
  /// For queries that produce anonymous (cached) results, this field will be populated by BigQuery.
  /// Structure is documented below.
  final pulumi.Input<JobQueryDestinationTable?>? destinationTable;
  /// If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.
  /// allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
  final pulumi.Input<bool?>? flattenResults;
  /// Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).
  /// If unspecified, this will be set to your project default.
  final pulumi.Input<int?>? maximumBillingTier;
  /// Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).
  /// If unspecified, this will be set to your project default.
  final pulumi.Input<String?>? maximumBytesBilled;
  /// Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  final pulumi.Input<String?>? parameterMode;
  /// Specifies a priority for the query.
  /// Default value is `INTERACTIVE`.
  /// Possible values are: `INTERACTIVE`, `BATCH`.
  final pulumi.Input<String?>? priority;
  /// SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  /// *NOTE*: queries containing [DML language](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language)
  /// (`DELETE`, `UPDATE`, `MERGE`, `INSERT`) must specify `createDisposition = ""` and `writeDisposition = ""`.
  final pulumi.Input<String> query;
  /// Allows the schema of the destination table to be updated as a side effect of the query job.
  /// Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
  /// when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table,
  /// specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema.
  /// One or more of the following values are specified:
  /// ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
  /// ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final pulumi.Input<List<String>?>? schemaUpdateOptions;
  /// Options controlling the execution of scripts.
  /// Structure is documented below.
  final pulumi.Input<JobQueryScriptOptions?>? scriptOptions;
  /// Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true.
  /// If set to false, the query will use BigQuery's standard SQL.
  final pulumi.Input<bool?>? useLegacySql;
  /// Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever
  /// tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified.
  /// The default value is true.
  final pulumi.Input<bool?>? useQueryCache;
  /// Describes user-defined function resources used in the query.
  /// Structure is documented below.
  final pulumi.Input<List<JobQueryUserDefinedFunctionResource>?>? userDefinedFunctionResources;
  /// Specifies the action that occurs if the destination table already exists. The following values are supported:
  /// WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
  /// WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
  /// WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
  /// Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon job completion.
  /// Default value is `WRITE_EMPTY`.
  /// Possible values are: `WRITE_TRUNCATE`, `WRITE_APPEND`, `WRITE_EMPTY`.
  final pulumi.Input<String?>? writeDisposition;

  /// Creates a new [JobQuery].
  /// [allowLargeResults] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.
  /// [connectionProperties] Connection properties to customize query behavior. Under JDBC, these correspond
  /// [continuous] (Optional, Beta)
  /// [createDisposition] Specifies whether the job is allowed to create new tables. The following values are supported:
  /// [defaultDataset] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys)
  /// [destinationTable] Describes the table where the query results should be stored.
  /// [flattenResults] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.
  /// [maximumBillingTier] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).
  /// [maximumBytesBilled] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).
  /// [parameterMode] Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  /// [priority] Specifies a priority for the query.
  /// [query] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  /// [schemaUpdateOptions] Allows the schema of the destination table to be updated as a side effect of the query job.
  /// [scriptOptions] Options controlling the execution of scripts.
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true.
  /// [useQueryCache] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever
  /// [userDefinedFunctionResources] Describes user-defined function resources used in the query.
  /// [writeDisposition] Specifies the action that occurs if the destination table already exists. The following values are supported:
  const JobQuery({
    this.allowLargeResults,
    this.connectionProperties,
    this.continuous,
    this.createDisposition,
    this.defaultDataset,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.flattenResults,
    this.maximumBillingTier,
    this.maximumBytesBilled,
    this.parameterMode,
    this.priority,
    required this.query,
    this.schemaUpdateOptions,
    this.scriptOptions,
    this.useLegacySql,
    this.useQueryCache,
    this.userDefinedFunctionResources,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLargeResults': ?allowLargeResults,
      'connectionProperties': ?pulumi.Input.mapOptionalInputValue<List<JobQueryConnectionProperty>, List<Map<String, dynamic>>>(connectionProperties, (value) => pulumi.Input.encodeList<JobQueryConnectionProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'continuous': ?continuous,
      'createDisposition': ?createDisposition,
      'defaultDataset': ?pulumi.Input.mapOptionalInputValue<JobQueryDefaultDataset, Map<String, dynamic>>(defaultDataset, (value) => value.toMap()),
      'destinationEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<JobQueryDestinationEncryptionConfiguration, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationTable': ?pulumi.Input.mapOptionalInputValue<JobQueryDestinationTable, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'flattenResults': ?flattenResults,
      'maximumBillingTier': ?maximumBillingTier,
      'maximumBytesBilled': ?maximumBytesBilled,
      'parameterMode': ?parameterMode,
      'priority': ?priority,
      'query': query,
      'schemaUpdateOptions': ?schemaUpdateOptions,
      'scriptOptions': ?pulumi.Input.mapOptionalInputValue<JobQueryScriptOptions, Map<String, dynamic>>(scriptOptions, (value) => value.toMap()),
      'useLegacySql': ?useLegacySql,
      'useQueryCache': ?useQueryCache,
      'userDefinedFunctionResources': ?pulumi.Input.mapOptionalInputValue<List<JobQueryUserDefinedFunctionResource>, List<Map<String, dynamic>>>(userDefinedFunctionResources, (value) => pulumi.Input.encodeList<JobQueryUserDefinedFunctionResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobQuery.fromMap(Map<String, dynamic> map) {
    return JobQuery(
      allowLargeResults: (() { final guardedValue = map['allowLargeResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobQueryConnectionProperty>(guardedValue, (value) => JobQueryConnectionProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      continuous: (() { final guardedValue = map['continuous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createDisposition: (() { final guardedValue = map['createDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDataset: (() { final guardedValue = map['defaultDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobQueryDefaultDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationEncryptionConfiguration: (() { final guardedValue = map['destinationEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobQueryDestinationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationTable: (() { final guardedValue = map['destinationTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobQueryDestinationTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flattenResults: (() { final guardedValue = map['flattenResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maximumBillingTier: (() { final guardedValue = map['maximumBillingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumBytesBilled: (() { final guardedValue = map['maximumBytesBilled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterMode: (() { final guardedValue = map['parameterMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      schemaUpdateOptions: (() { final guardedValue = map['schemaUpdateOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scriptOptions: (() { final guardedValue = map['scriptOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobQueryScriptOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useLegacySql: (() { final guardedValue = map['useLegacySql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useQueryCache: (() { final guardedValue = map['useQueryCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userDefinedFunctionResources: (() { final guardedValue = map['userDefinedFunctionResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobQueryUserDefinedFunctionResource>(guardedValue, (value) => JobQueryUserDefinedFunctionResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      writeDisposition: (() { final guardedValue = map['writeDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
