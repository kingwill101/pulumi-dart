// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clustering.dart';
import 'connection_property.dart';
import 'dataset_reference.dart';
import 'encryption_configuration.dart';
import 'query_parameter.dart';
import 'range_partitioning.dart';
import 'table_reference.dart';
import 'time_partitioning.dart';
import 'user_defined_function_resource.dart';

class JobConfigurationQuery {
  /// [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size.
  final pulumi.Input<bool>? allowLargeResults;
  /// [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  final pulumi.Input<Clustering>? clustering;
  /// Connection properties.
  final pulumi.Input<List<ConnectionProperty>>? connectionProperties;
  /// [Optional] Specifies whether the query should be executed as a continuous query. The default value is false.
  final pulumi.Input<bool>? continuous;
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String>? createDisposition;
  /// If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.
  final pulumi.Input<bool>? createSession;
  /// [Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  final pulumi.Input<DatasetReference>? defaultDataset;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final pulumi.Input<EncryptionConfiguration>? destinationEncryptionConfiguration;
  /// [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size.
  final pulumi.Input<TableReference>? destinationTable;
  /// [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
  final pulumi.Input<bool>? flattenResults;
  /// [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default.
  final pulumi.Input<int>? maximumBillingTier;
  /// [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
  final pulumi.Input<String>? maximumBytesBilled;
  /// Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  final pulumi.Input<String>? parameterMode;
  /// [Deprecated] This property is deprecated.
  final pulumi.Input<bool>? preserveNulls;
  /// [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE.
  final pulumi.Input<String>? priority;
  /// [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  final pulumi.Input<String>? query;
  /// Query parameters for standard SQL queries.
  final pulumi.Input<List<QueryParameter>>? queryParameters;
  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<RangePartitioning>? rangePartitioning;
  /// Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final pulumi.Input<List<String>>? schemaUpdateOptions;
  /// [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  final pulumi.Input<Map<String, String>>? tableDefinitions;
  /// Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<TimePartitioning>? timePartitioning;
  /// Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
  final pulumi.Input<bool>? useLegacySql;
  /// [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true.
  final pulumi.Input<bool>? useQueryCache;
  /// Describes user-defined function resources used in the query.
  final pulumi.Input<List<UserDefinedFunctionResource>>? userDefinedFunctionResources;
  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String>? writeDisposition;

  /// Creates a new [JobConfigurationQuery].
  /// [allowLargeResults] [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size.
  /// [clustering] [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  /// [connectionProperties] Connection properties.
  /// [continuous] [Optional] Specifies whether the query should be executed as a continuous query. The default value is false.
  /// [createDisposition] [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  /// [createSession] If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.
  /// [defaultDataset] [Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [destinationTable] [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size.
  /// [flattenResults] [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
  /// [maximumBillingTier] [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default.
  /// [maximumBytesBilled] [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
  /// [parameterMode] Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  /// [preserveNulls] [Deprecated] This property is deprecated.
  /// [priority] [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE.
  /// [query] [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  /// [queryParameters] Query parameters for standard SQL queries.
  /// [rangePartitioning] [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [schemaUpdateOptions] Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  /// [tableDefinitions] [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  /// [timePartitioning] Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
  /// [useQueryCache] [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true.
  /// [userDefinedFunctionResources] Describes user-defined function resources used in the query.
  /// [writeDisposition] [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  const JobConfigurationQuery({
    this.allowLargeResults,
    this.clustering,
    this.connectionProperties,
    this.continuous,
    this.createDisposition,
    this.createSession,
    this.defaultDataset,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.flattenResults,
    this.maximumBillingTier,
    this.maximumBytesBilled,
    this.parameterMode,
    this.preserveNulls,
    this.priority,
    this.query,
    this.queryParameters,
    this.rangePartitioning,
    this.schemaUpdateOptions,
    this.tableDefinitions,
    this.timePartitioning,
    this.useLegacySql,
    this.useQueryCache,
    this.userDefinedFunctionResources,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLargeResults': ?allowLargeResults,
      'clustering': ?pulumi.Input.mapOptionalInputValue<Clustering, Map<String, dynamic>>(clustering, (value) => value.toMap()),
      'connectionProperties': ?pulumi.Input.mapOptionalInputValue<List<ConnectionProperty>, List<Map<String, dynamic>>>(connectionProperties, (value) => pulumi.Input.encodeList<ConnectionProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'continuous': ?continuous,
      'createDisposition': ?createDisposition,
      'createSession': ?createSession,
      'defaultDataset': ?pulumi.Input.mapOptionalInputValue<DatasetReference, Map<String, dynamic>>(defaultDataset, (value) => value.toMap()),
      'destinationEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationTable': ?pulumi.Input.mapOptionalInputValue<TableReference, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'flattenResults': ?flattenResults,
      'maximumBillingTier': ?maximumBillingTier,
      'maximumBytesBilled': ?maximumBytesBilled,
      'parameterMode': ?parameterMode,
      'preserveNulls': ?preserveNulls,
      'priority': ?priority,
      'query': ?query,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<QueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<QueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rangePartitioning': ?pulumi.Input.mapOptionalInputValue<RangePartitioning, Map<String, dynamic>>(rangePartitioning, (value) => value.toMap()),
      'schemaUpdateOptions': ?schemaUpdateOptions,
      'tableDefinitions': ?tableDefinitions,
      'timePartitioning': ?pulumi.Input.mapOptionalInputValue<TimePartitioning, Map<String, dynamic>>(timePartitioning, (value) => value.toMap()),
      'useLegacySql': ?useLegacySql,
      'useQueryCache': ?useQueryCache,
      'userDefinedFunctionResources': ?pulumi.Input.mapOptionalInputValue<List<UserDefinedFunctionResource>, List<Map<String, dynamic>>>(userDefinedFunctionResources, (value) => pulumi.Input.encodeList<UserDefinedFunctionResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobConfigurationQuery.fromMap(Map<String, dynamic> map) {
    return JobConfigurationQuery(
      allowLargeResults: (() { final guardedValue = map['allowLargeResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clustering: (() { final guardedValue = map['clustering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Clustering.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionProperty>(guardedValue, (value) => ConnectionProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      continuous: (() { final guardedValue = map['continuous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createDisposition: (() { final guardedValue = map['createDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createSession: (() { final guardedValue = map['createSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultDataset: (() { final guardedValue = map['defaultDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationEncryptionConfiguration: (() { final guardedValue = map['destinationEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationTable: (() { final guardedValue = map['destinationTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flattenResults: (() { final guardedValue = map['flattenResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maximumBillingTier: (() { final guardedValue = map['maximumBillingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumBytesBilled: (() { final guardedValue = map['maximumBytesBilled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterMode: (() { final guardedValue = map['parameterMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveNulls: (() { final guardedValue = map['preserveNulls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueryParameter>(guardedValue, (value) => QueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rangePartitioning: (() { final guardedValue = map['rangePartitioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RangePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaUpdateOptions: (() { final guardedValue = map['schemaUpdateOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tableDefinitions: (() { final guardedValue = map['tableDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timePartitioning: (() { final guardedValue = map['timePartitioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useLegacySql: (() { final guardedValue = map['useLegacySql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useQueryCache: (() { final guardedValue = map['useQueryCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userDefinedFunctionResources: (() { final guardedValue = map['userDefinedFunctionResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserDefinedFunctionResource>(guardedValue, (value) => UserDefinedFunctionResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      writeDisposition: (() { final guardedValue = map['writeDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

