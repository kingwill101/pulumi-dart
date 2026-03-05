// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clustering_response.dart';
import 'connection_property_response.dart';
import 'dataset_reference_response.dart';
import 'encryption_configuration_response.dart';
import 'query_parameter_response.dart';
import 'range_partitioning_response.dart';
import 'table_reference_response.dart';
import 'time_partitioning_response.dart';
import 'user_defined_function_resource_response.dart';

class JobConfigurationQueryResponse {
  /// [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size.
  final pulumi.Input<bool> allowLargeResults;
  /// [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  final pulumi.Input<ClusteringResponse> clustering;
  /// Connection properties.
  final pulumi.Input<List<ConnectionPropertyResponse>> connectionProperties;
  /// [Optional] Specifies whether the query should be executed as a continuous query. The default value is false.
  final pulumi.Input<bool> continuous;
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String> createDisposition;
  /// If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.
  final pulumi.Input<bool> createSession;
  /// [Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  final pulumi.Input<DatasetReferenceResponse> defaultDataset;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final pulumi.Input<EncryptionConfigurationResponse> destinationEncryptionConfiguration;
  /// [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size.
  final pulumi.Input<TableReferenceResponse> destinationTable;
  /// [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
  final pulumi.Input<bool> flattenResults;
  /// [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default.
  final pulumi.Input<int> maximumBillingTier;
  /// [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
  final pulumi.Input<String> maximumBytesBilled;
  /// Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  final pulumi.Input<String> parameterMode;
  /// [Deprecated] This property is deprecated.
  final pulumi.Input<bool> preserveNulls;
  /// [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE.
  final pulumi.Input<String> priority;
  /// [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  final pulumi.Input<String> query;
  /// Query parameters for standard SQL queries.
  final pulumi.Input<List<QueryParameterResponse>> queryParameters;
  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<RangePartitioningResponse> rangePartitioning;
  /// Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final pulumi.Input<List<String>> schemaUpdateOptions;
  /// [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  final pulumi.Input<Map<String, String>> tableDefinitions;
  /// Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  final pulumi.Input<TimePartitioningResponse> timePartitioning;
  /// Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
  final pulumi.Input<bool> useLegacySql;
  /// [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true.
  final pulumi.Input<bool> useQueryCache;
  /// Describes user-defined function resources used in the query.
  final pulumi.Input<List<UserDefinedFunctionResourceResponse>> userDefinedFunctionResources;
  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String> writeDisposition;

  /// Creates a new [JobConfigurationQueryResponse].
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
  JobConfigurationQueryResponse({
    required this.allowLargeResults,
    required this.clustering,
    required this.connectionProperties,
    required this.continuous,
    required this.createDisposition,
    required this.createSession,
    required this.defaultDataset,
    required this.destinationEncryptionConfiguration,
    required this.destinationTable,
    required this.flattenResults,
    required this.maximumBillingTier,
    required this.maximumBytesBilled,
    required this.parameterMode,
    required this.preserveNulls,
    required this.priority,
    required this.query,
    required this.queryParameters,
    required this.rangePartitioning,
    required this.schemaUpdateOptions,
    required this.tableDefinitions,
    required this.timePartitioning,
    required this.useLegacySql,
    required this.useQueryCache,
    required this.userDefinedFunctionResources,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLargeResults': allowLargeResults,
      'clustering': pulumi.Input.mapInputValue<ClusteringResponse, Map<String, dynamic>>(clustering, (value) => value.toMap()),
      'connectionProperties': pulumi.Input.mapInputValue<List<ConnectionPropertyResponse>, List<Map<String, dynamic>>>(connectionProperties, (value) => pulumi.Input.encodeList<ConnectionPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'continuous': continuous,
      'createDisposition': createDisposition,
      'createSession': createSession,
      'defaultDataset': pulumi.Input.mapInputValue<DatasetReferenceResponse, Map<String, dynamic>>(defaultDataset, (value) => value.toMap()),
      'destinationEncryptionConfiguration': pulumi.Input.mapInputValue<EncryptionConfigurationResponse, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'flattenResults': flattenResults,
      'maximumBillingTier': maximumBillingTier,
      'maximumBytesBilled': maximumBytesBilled,
      'parameterMode': parameterMode,
      'preserveNulls': preserveNulls,
      'priority': priority,
      'query': query,
      'queryParameters': pulumi.Input.mapInputValue<List<QueryParameterResponse>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<QueryParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rangePartitioning': pulumi.Input.mapInputValue<RangePartitioningResponse, Map<String, dynamic>>(rangePartitioning, (value) => value.toMap()),
      'schemaUpdateOptions': schemaUpdateOptions,
      'tableDefinitions': tableDefinitions,
      'timePartitioning': pulumi.Input.mapInputValue<TimePartitioningResponse, Map<String, dynamic>>(timePartitioning, (value) => value.toMap()),
      'useLegacySql': useLegacySql,
      'useQueryCache': useQueryCache,
      'userDefinedFunctionResources': pulumi.Input.mapInputValue<List<UserDefinedFunctionResourceResponse>, List<Map<String, dynamic>>>(userDefinedFunctionResources, (value) => pulumi.Input.encodeList<UserDefinedFunctionResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeDisposition': writeDisposition,
    };
  }

  factory JobConfigurationQueryResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationQueryResponse(
      allowLargeResults: pulumi.Input.fromValue(map['allowLargeResults'] as bool),
      clustering: pulumi.Input.fromValue(ClusteringResponse.fromMap((map['clustering']! as Map).cast<String, dynamic>())),
      connectionProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionPropertyResponse>(map['connectionProperties']!, (value) => ConnectionPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      continuous: pulumi.Input.fromValue(map['continuous'] as bool),
      createDisposition: pulumi.Input.fromValue(map['createDisposition'] as String),
      createSession: pulumi.Input.fromValue(map['createSession'] as bool),
      defaultDataset: pulumi.Input.fromValue(DatasetReferenceResponse.fromMap((map['defaultDataset']! as Map).cast<String, dynamic>())),
      destinationEncryptionConfiguration: pulumi.Input.fromValue(EncryptionConfigurationResponse.fromMap((map['destinationEncryptionConfiguration']! as Map).cast<String, dynamic>())),
      destinationTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['destinationTable']! as Map).cast<String, dynamic>())),
      flattenResults: pulumi.Input.fromValue(map['flattenResults'] as bool),
      maximumBillingTier: pulumi.Input.fromValue(map['maximumBillingTier'] as int),
      maximumBytesBilled: pulumi.Input.fromValue(map['maximumBytesBilled'] as String),
      parameterMode: pulumi.Input.fromValue(map['parameterMode'] as String),
      preserveNulls: pulumi.Input.fromValue(map['preserveNulls'] as bool),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      queryParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<QueryParameterResponse>(map['queryParameters']!, (value) => QueryParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      rangePartitioning: pulumi.Input.fromValue(RangePartitioningResponse.fromMap((map['rangePartitioning']! as Map).cast<String, dynamic>())),
      schemaUpdateOptions: pulumi.Input.fromValue((map['schemaUpdateOptions'] as List).cast<String>()),
      tableDefinitions: pulumi.Input.fromValue((map['tableDefinitions'] as Map).cast<String, String>()),
      timePartitioning: pulumi.Input.fromValue(TimePartitioningResponse.fromMap((map['timePartitioning']! as Map).cast<String, dynamic>())),
      useLegacySql: pulumi.Input.fromValue(map['useLegacySql'] as bool),
      useQueryCache: pulumi.Input.fromValue(map['useQueryCache'] as bool),
      userDefinedFunctionResources: pulumi.Input.fromValue(pulumi.Input.decodeList<UserDefinedFunctionResourceResponse>(map['userDefinedFunctionResources']!, (value) => UserDefinedFunctionResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      writeDisposition: pulumi.Input.fromValue(map['writeDisposition'] as String),
    );
  }
}

