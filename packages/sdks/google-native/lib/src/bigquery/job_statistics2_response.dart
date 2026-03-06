// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_engine_statistics_response.dart';
import 'big_query_model_training_response.dart';
import 'dataset_reference_response.dart';
import 'dml_statistics_response.dart';
import 'explain_query_stage_response.dart';
import 'job_statistics2_reservation_usage_item_response.dart';
import 'ml_statistics_response.dart';
import 'query_parameter_response.dart';
import 'query_timeline_sample_response.dart';
import 'routine_reference_response.dart';
import 'row_access_policy_reference_response.dart';
import 'search_statistics_response.dart';
import 'spark_statistics_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';

class JobStatistics2Response {
  /// BI Engine specific Statistics. [Output only] BI Engine specific Statistics.
  final pulumi.Input<BiEngineStatisticsResponse> biEngineStatistics;
  /// [Output only] Billing tier for the job.
  final pulumi.Input<int> billingTier;
  /// [Output only] Whether the query result was fetched from the query cache.
  final pulumi.Input<bool> cacheHit;
  /// [Output only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
  final pulumi.Input<String> ddlAffectedRowAccessPolicyCount;
  /// [Output only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table is used just for its type information.
  final pulumi.Input<TableReferenceResponse> ddlDestinationTable;
  /// The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): "CREATE": The query created the DDL target. "SKIP": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. "REPLACE": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. "DROP": The query deleted the DDL target.
  final pulumi.Input<String> ddlOperationPerformed;
  /// [Output only] The DDL target dataset. Present only for CREATE/ALTER/DROP/UNDROP SCHEMA queries.
  final pulumi.Input<DatasetReferenceResponse> ddlTargetDataset;
  /// The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  final pulumi.Input<RoutineReferenceResponse> ddlTargetRoutine;
  /// [Output only] [Preview] The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.
  final pulumi.Input<RowAccessPolicyReferenceResponse> ddlTargetRowAccessPolicy;
  /// [Output only] The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.
  final pulumi.Input<TableReferenceResponse> ddlTargetTable;
  /// [Output only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  final pulumi.Input<DmlStatisticsResponse> dmlStats;
  /// [Output only] The original estimate of bytes processed for the job.
  final pulumi.Input<String> estimatedBytesProcessed;
  /// [Output only] Statistics of a BigQuery ML training job.
  final pulumi.Input<MlStatisticsResponse> mlStatistics;
  /// [Output only, Beta] Information about create model query job progress.
  final pulumi.Input<BigQueryModelTrainingResponse> modelTraining;
  /// [Output only, Beta] Deprecated; do not use.
  final pulumi.Input<int> modelTrainingCurrentIteration;
  /// [Output only, Beta] Deprecated; do not use.
  final pulumi.Input<String> modelTrainingExpectedTotalIteration;
  /// [Output only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  final pulumi.Input<String> numDmlAffectedRows;
  /// [Output only] Describes execution plan for the query.
  final pulumi.Input<List<ExplainQueryStageResponse>> queryPlan;
  /// [Output only] Referenced routines (persistent user-defined functions and stored procedures) for the job.
  final pulumi.Input<List<RoutineReferenceResponse>> referencedRoutines;
  /// [Output only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
  final pulumi.Input<List<TableReferenceResponse>> referencedTables;
  /// [Output only] Job resource usage breakdown by reservation.
  final pulumi.Input<List<JobStatistics2ReservationUsageItemResponse>> reservationUsage;
  /// [Output only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.
  final pulumi.Input<TableSchemaResponse> schema;
  /// [Output only] Search query specific statistics.
  final pulumi.Input<SearchStatisticsResponse> searchStatistics;
  /// [Output only] Statistics of a Spark procedure job.
  final pulumi.Input<SparkStatisticsResponse> sparkStatistics;
  /// The type of query statement, if valid. Possible values (new values might be added in the future): "SELECT": SELECT query. "INSERT": INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "UPDATE": UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "DELETE": DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "MERGE": MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "ALTER_TABLE": ALTER TABLE query. "ALTER_VIEW": ALTER VIEW query. "ASSERT": ASSERT condition AS 'description'. "CREATE_FUNCTION": CREATE FUNCTION query. "CREATE_MODEL": CREATE [OR REPLACE] MODEL ... AS SELECT ... . "CREATE_PROCEDURE": CREATE PROCEDURE query. "CREATE_TABLE": CREATE [OR REPLACE] TABLE without AS SELECT. "CREATE_TABLE_AS_SELECT": CREATE [OR REPLACE] TABLE ... AS SELECT ... . "CREATE_VIEW": CREATE [OR REPLACE] VIEW ... AS SELECT ... . "DROP_FUNCTION" : DROP FUNCTION query. "DROP_PROCEDURE": DROP PROCEDURE query. "DROP_TABLE": DROP TABLE query. "DROP_VIEW": DROP VIEW query.
  final pulumi.Input<String> statementType;
  /// [Output only] [Beta] Describes a timeline of job execution.
  final pulumi.Input<List<QueryTimelineSampleResponse>> timeline;
  /// [Output only] Total bytes billed for the job.
  final pulumi.Input<String> totalBytesBilled;
  /// [Output only] Total bytes processed for the job.
  final pulumi.Input<String> totalBytesProcessed;
  /// [Output only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
  final pulumi.Input<String> totalBytesProcessedAccuracy;
  /// [Output only] Total number of partitions processed from all partitioned tables referenced in the job.
  final pulumi.Input<String> totalPartitionsProcessed;
  /// [Output only] Slot-milliseconds for the job.
  final pulumi.Input<String> totalSlotMs;
  /// Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
  final pulumi.Input<String> transferredBytes;
  /// Standard SQL only: list of undeclared query parameters detected during a dry run validation.
  final pulumi.Input<List<QueryParameterResponse>> undeclaredQueryParameters;

  /// Creates a new [JobStatistics2Response].
  /// [biEngineStatistics] BI Engine specific Statistics. [Output only] BI Engine specific Statistics.
  /// [billingTier] [Output only] Billing tier for the job.
  /// [cacheHit] [Output only] Whether the query result was fetched from the query cache.
  /// [ddlAffectedRowAccessPolicyCount] [Output only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
  /// [ddlDestinationTable] [Output only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table is used just for its type information.
  /// [ddlOperationPerformed] The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): "CREATE": The query created the DDL target. "SKIP": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. "REPLACE": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. "DROP": The query deleted the DDL target.
  /// [ddlTargetDataset] [Output only] The DDL target dataset. Present only for CREATE/ALTER/DROP/UNDROP SCHEMA queries.
  /// [ddlTargetRoutine] The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  /// [ddlTargetRowAccessPolicy] [Output only] [Preview] The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.
  /// [ddlTargetTable] [Output only] The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.
  /// [dmlStats] [Output only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  /// [estimatedBytesProcessed] [Output only] The original estimate of bytes processed for the job.
  /// [mlStatistics] [Output only] Statistics of a BigQuery ML training job.
  /// [modelTraining] [Output only, Beta] Information about create model query job progress.
  /// [modelTrainingCurrentIteration] [Output only, Beta] Deprecated; do not use.
  /// [modelTrainingExpectedTotalIteration] [Output only, Beta] Deprecated; do not use.
  /// [numDmlAffectedRows] [Output only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  /// [queryPlan] [Output only] Describes execution plan for the query.
  /// [referencedRoutines] [Output only] Referenced routines (persistent user-defined functions and stored procedures) for the job.
  /// [referencedTables] [Output only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
  /// [reservationUsage] [Output only] Job resource usage breakdown by reservation.
  /// [schema] [Output only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.
  /// [searchStatistics] [Output only] Search query specific statistics.
  /// [sparkStatistics] [Output only] Statistics of a Spark procedure job.
  /// [statementType] The type of query statement, if valid. Possible values (new values might be added in the future): "SELECT": SELECT query. "INSERT": INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "UPDATE": UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "DELETE": DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "MERGE": MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "ALTER_TABLE": ALTER TABLE query. "ALTER_VIEW": ALTER VIEW query. "ASSERT": ASSERT condition AS 'description'. "CREATE_FUNCTION": CREATE FUNCTION query. "CREATE_MODEL": CREATE [OR REPLACE] MODEL ... AS SELECT ... . "CREATE_PROCEDURE": CREATE PROCEDURE query. "CREATE_TABLE": CREATE [OR REPLACE] TABLE without AS SELECT. "CREATE_TABLE_AS_SELECT": CREATE [OR REPLACE] TABLE ... AS SELECT ... . "CREATE_VIEW": CREATE [OR REPLACE] VIEW ... AS SELECT ... . "DROP_FUNCTION" : DROP FUNCTION query. "DROP_PROCEDURE": DROP PROCEDURE query. "DROP_TABLE": DROP TABLE query. "DROP_VIEW": DROP VIEW query.
  /// [timeline] [Output only] [Beta] Describes a timeline of job execution.
  /// [totalBytesBilled] [Output only] Total bytes billed for the job.
  /// [totalBytesProcessed] [Output only] Total bytes processed for the job.
  /// [totalBytesProcessedAccuracy] [Output only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
  /// [totalPartitionsProcessed] [Output only] Total number of partitions processed from all partitioned tables referenced in the job.
  /// [totalSlotMs] [Output only] Slot-milliseconds for the job.
  /// [transferredBytes] Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
  /// [undeclaredQueryParameters] Standard SQL only: list of undeclared query parameters detected during a dry run validation.
  const JobStatistics2Response({
    required this.biEngineStatistics,
    required this.billingTier,
    required this.cacheHit,
    required this.ddlAffectedRowAccessPolicyCount,
    required this.ddlDestinationTable,
    required this.ddlOperationPerformed,
    required this.ddlTargetDataset,
    required this.ddlTargetRoutine,
    required this.ddlTargetRowAccessPolicy,
    required this.ddlTargetTable,
    required this.dmlStats,
    required this.estimatedBytesProcessed,
    required this.mlStatistics,
    required this.modelTraining,
    required this.modelTrainingCurrentIteration,
    required this.modelTrainingExpectedTotalIteration,
    required this.numDmlAffectedRows,
    required this.queryPlan,
    required this.referencedRoutines,
    required this.referencedTables,
    required this.reservationUsage,
    required this.schema,
    required this.searchStatistics,
    required this.sparkStatistics,
    required this.statementType,
    required this.timeline,
    required this.totalBytesBilled,
    required this.totalBytesProcessed,
    required this.totalBytesProcessedAccuracy,
    required this.totalPartitionsProcessed,
    required this.totalSlotMs,
    required this.transferredBytes,
    required this.undeclaredQueryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biEngineStatistics': pulumi.Input.mapInputValue<BiEngineStatisticsResponse, Map<String, dynamic>>(biEngineStatistics, (value) => value.toMap()),
      'billingTier': billingTier,
      'cacheHit': cacheHit,
      'ddlAffectedRowAccessPolicyCount': ddlAffectedRowAccessPolicyCount,
      'ddlDestinationTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(ddlDestinationTable, (value) => value.toMap()),
      'ddlOperationPerformed': ddlOperationPerformed,
      'ddlTargetDataset': pulumi.Input.mapInputValue<DatasetReferenceResponse, Map<String, dynamic>>(ddlTargetDataset, (value) => value.toMap()),
      'ddlTargetRoutine': pulumi.Input.mapInputValue<RoutineReferenceResponse, Map<String, dynamic>>(ddlTargetRoutine, (value) => value.toMap()),
      'ddlTargetRowAccessPolicy': pulumi.Input.mapInputValue<RowAccessPolicyReferenceResponse, Map<String, dynamic>>(ddlTargetRowAccessPolicy, (value) => value.toMap()),
      'ddlTargetTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(ddlTargetTable, (value) => value.toMap()),
      'dmlStats': pulumi.Input.mapInputValue<DmlStatisticsResponse, Map<String, dynamic>>(dmlStats, (value) => value.toMap()),
      'estimatedBytesProcessed': estimatedBytesProcessed,
      'mlStatistics': pulumi.Input.mapInputValue<MlStatisticsResponse, Map<String, dynamic>>(mlStatistics, (value) => value.toMap()),
      'modelTraining': pulumi.Input.mapInputValue<BigQueryModelTrainingResponse, Map<String, dynamic>>(modelTraining, (value) => value.toMap()),
      'modelTrainingCurrentIteration': modelTrainingCurrentIteration,
      'modelTrainingExpectedTotalIteration': modelTrainingExpectedTotalIteration,
      'numDmlAffectedRows': numDmlAffectedRows,
      'queryPlan': pulumi.Input.mapInputValue<List<ExplainQueryStageResponse>, List<Map<String, dynamic>>>(queryPlan, (value) => pulumi.Input.encodeList<ExplainQueryStageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referencedRoutines': pulumi.Input.mapInputValue<List<RoutineReferenceResponse>, List<Map<String, dynamic>>>(referencedRoutines, (value) => pulumi.Input.encodeList<RoutineReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referencedTables': pulumi.Input.mapInputValue<List<TableReferenceResponse>, List<Map<String, dynamic>>>(referencedTables, (value) => pulumi.Input.encodeList<TableReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservationUsage': pulumi.Input.mapInputValue<List<JobStatistics2ReservationUsageItemResponse>, List<Map<String, dynamic>>>(reservationUsage, (value) => pulumi.Input.encodeList<JobStatistics2ReservationUsageItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': pulumi.Input.mapInputValue<TableSchemaResponse, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'searchStatistics': pulumi.Input.mapInputValue<SearchStatisticsResponse, Map<String, dynamic>>(searchStatistics, (value) => value.toMap()),
      'sparkStatistics': pulumi.Input.mapInputValue<SparkStatisticsResponse, Map<String, dynamic>>(sparkStatistics, (value) => value.toMap()),
      'statementType': statementType,
      'timeline': pulumi.Input.mapInputValue<List<QueryTimelineSampleResponse>, List<Map<String, dynamic>>>(timeline, (value) => pulumi.Input.encodeList<QueryTimelineSampleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalBytesBilled': totalBytesBilled,
      'totalBytesProcessed': totalBytesProcessed,
      'totalBytesProcessedAccuracy': totalBytesProcessedAccuracy,
      'totalPartitionsProcessed': totalPartitionsProcessed,
      'totalSlotMs': totalSlotMs,
      'transferredBytes': transferredBytes,
      'undeclaredQueryParameters': pulumi.Input.mapInputValue<List<QueryParameterResponse>, List<Map<String, dynamic>>>(undeclaredQueryParameters, (value) => pulumi.Input.encodeList<QueryParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobStatistics2Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics2Response(
      biEngineStatistics: pulumi.Input.fromValue(BiEngineStatisticsResponse.fromMap((map['biEngineStatistics']! as Map).cast<String, dynamic>())),
      billingTier: pulumi.Input.fromValue(map['billingTier'] as int),
      cacheHit: pulumi.Input.fromValue(map['cacheHit'] as bool),
      ddlAffectedRowAccessPolicyCount: pulumi.Input.fromValue(map['ddlAffectedRowAccessPolicyCount'] as String),
      ddlDestinationTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['ddlDestinationTable']! as Map).cast<String, dynamic>())),
      ddlOperationPerformed: pulumi.Input.fromValue(map['ddlOperationPerformed'] as String),
      ddlTargetDataset: pulumi.Input.fromValue(DatasetReferenceResponse.fromMap((map['ddlTargetDataset']! as Map).cast<String, dynamic>())),
      ddlTargetRoutine: pulumi.Input.fromValue(RoutineReferenceResponse.fromMap((map['ddlTargetRoutine']! as Map).cast<String, dynamic>())),
      ddlTargetRowAccessPolicy: pulumi.Input.fromValue(RowAccessPolicyReferenceResponse.fromMap((map['ddlTargetRowAccessPolicy']! as Map).cast<String, dynamic>())),
      ddlTargetTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['ddlTargetTable']! as Map).cast<String, dynamic>())),
      dmlStats: pulumi.Input.fromValue(DmlStatisticsResponse.fromMap((map['dmlStats']! as Map).cast<String, dynamic>())),
      estimatedBytesProcessed: pulumi.Input.fromValue(map['estimatedBytesProcessed'] as String),
      mlStatistics: pulumi.Input.fromValue(MlStatisticsResponse.fromMap((map['mlStatistics']! as Map).cast<String, dynamic>())),
      modelTraining: pulumi.Input.fromValue(BigQueryModelTrainingResponse.fromMap((map['modelTraining']! as Map).cast<String, dynamic>())),
      modelTrainingCurrentIteration: pulumi.Input.fromValue(map['modelTrainingCurrentIteration'] as int),
      modelTrainingExpectedTotalIteration: pulumi.Input.fromValue(map['modelTrainingExpectedTotalIteration'] as String),
      numDmlAffectedRows: pulumi.Input.fromValue(map['numDmlAffectedRows'] as String),
      queryPlan: pulumi.Input.fromValue(pulumi.Input.decodeList<ExplainQueryStageResponse>(map['queryPlan']!, (value) => ExplainQueryStageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      referencedRoutines: pulumi.Input.fromValue(pulumi.Input.decodeList<RoutineReferenceResponse>(map['referencedRoutines']!, (value) => RoutineReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      referencedTables: pulumi.Input.fromValue(pulumi.Input.decodeList<TableReferenceResponse>(map['referencedTables']!, (value) => TableReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      reservationUsage: pulumi.Input.fromValue(pulumi.Input.decodeList<JobStatistics2ReservationUsageItemResponse>(map['reservationUsage']!, (value) => JobStatistics2ReservationUsageItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      schema: pulumi.Input.fromValue(TableSchemaResponse.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      searchStatistics: pulumi.Input.fromValue(SearchStatisticsResponse.fromMap((map['searchStatistics']! as Map).cast<String, dynamic>())),
      sparkStatistics: pulumi.Input.fromValue(SparkStatisticsResponse.fromMap((map['sparkStatistics']! as Map).cast<String, dynamic>())),
      statementType: pulumi.Input.fromValue(map['statementType'] as String),
      timeline: pulumi.Input.fromValue(pulumi.Input.decodeList<QueryTimelineSampleResponse>(map['timeline']!, (value) => QueryTimelineSampleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      totalBytesBilled: pulumi.Input.fromValue(map['totalBytesBilled'] as String),
      totalBytesProcessed: pulumi.Input.fromValue(map['totalBytesProcessed'] as String),
      totalBytesProcessedAccuracy: pulumi.Input.fromValue(map['totalBytesProcessedAccuracy'] as String),
      totalPartitionsProcessed: pulumi.Input.fromValue(map['totalPartitionsProcessed'] as String),
      totalSlotMs: pulumi.Input.fromValue(map['totalSlotMs'] as String),
      transferredBytes: pulumi.Input.fromValue(map['transferredBytes'] as String),
      undeclaredQueryParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<QueryParameterResponse>(map['undeclaredQueryParameters']!, (value) => QueryParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

