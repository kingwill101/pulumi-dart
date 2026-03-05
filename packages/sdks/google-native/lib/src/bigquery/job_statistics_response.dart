// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_statistics_response.dart';
import 'job_statistics2_response.dart';
import 'job_statistics3_response.dart';
import 'job_statistics4_response.dart';
import 'job_statistics5_response.dart';
import 'job_statistics_reservation_usage_item_response.dart';
import 'row_level_security_statistics_response.dart';
import 'script_statistics_response.dart';
import 'session_info_response.dart';
import 'transaction_info_response.dart';

class JobStatisticsResponse {
  /// [TrustedTester] [Output-only] Job progress (0.0 -&gt; 1.0) for LOAD and EXTRACT jobs.
  final pulumi.Input<double> completionRatio;
  /// Statistics for a copy job.
  final pulumi.Input<JobStatistics5Response> copy;
  /// Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs.
  final pulumi.Input<String> creationTime;
  /// Statistics for data masking. Present only for query and extract jobs.
  final pulumi.Input<DataMaskingStatisticsResponse> dataMaskingStatistics;
  /// End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state.
  final pulumi.Input<String> endTime;
  /// Statistics for an extract job.
  final pulumi.Input<JobStatistics4Response> extract;
  /// Statistics for a load job.
  final pulumi.Input<JobStatistics3Response> load;
  /// Number of child jobs executed.
  final pulumi.Input<String> numChildJobs;
  /// If this is a child job, the id of the parent.
  final pulumi.Input<String> parentJobId;
  /// Statistics for a query job.
  final pulumi.Input<JobStatistics2Response> query;
  /// Quotas which delayed this job's start time.
  final pulumi.Input<List<String>> quotaDeferments;
  /// Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job.
  final pulumi.Input<String> reservationId;
  /// Job resource usage breakdown by reservation.
  final pulumi.Input<List<JobStatisticsReservationUsageItemResponse>> reservationUsage;
  /// [Preview] Statistics for row-level security. Present only for query and extract jobs.
  final pulumi.Input<RowLevelSecurityStatisticsResponse> rowLevelSecurityStatistics;
  /// Statistics for a child job of a script.
  final pulumi.Input<ScriptStatisticsResponse> scriptStatistics;
  /// [Preview] Information of the session if this job is part of one.
  final pulumi.Input<SessionInfoResponse> sessionInfo;
  /// Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE.
  final pulumi.Input<String> startTime;
  /// [Deprecated] Use the bytes processed in the query statistics instead.
  final pulumi.Input<String> totalBytesProcessed;
  /// Slot-milliseconds for the job.
  final pulumi.Input<String> totalSlotMs;
  /// [Alpha] Information of the multi-statement transaction if this job is part of one.
  final pulumi.Input<TransactionInfoResponse> transactionInfo;

  /// Creates a new [JobStatisticsResponse].
  /// [completionRatio] [TrustedTester] [Output-only] Job progress (0.0 -&gt; 1.0) for LOAD and EXTRACT jobs.
  /// [copy] Statistics for a copy job.
  /// [creationTime] Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs.
  /// [dataMaskingStatistics] Statistics for data masking. Present only for query and extract jobs.
  /// [endTime] End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state.
  /// [extract] Statistics for an extract job.
  /// [load] Statistics for a load job.
  /// [numChildJobs] Number of child jobs executed.
  /// [parentJobId] If this is a child job, the id of the parent.
  /// [query] Statistics for a query job.
  /// [quotaDeferments] Quotas which delayed this job's start time.
  /// [reservationId] Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job.
  /// [reservationUsage] Job resource usage breakdown by reservation.
  /// [rowLevelSecurityStatistics] [Preview] Statistics for row-level security. Present only for query and extract jobs.
  /// [scriptStatistics] Statistics for a child job of a script.
  /// [sessionInfo] [Preview] Information of the session if this job is part of one.
  /// [startTime] Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE.
  /// [totalBytesProcessed] [Deprecated] Use the bytes processed in the query statistics instead.
  /// [totalSlotMs] Slot-milliseconds for the job.
  /// [transactionInfo] [Alpha] Information of the multi-statement transaction if this job is part of one.
  JobStatisticsResponse({
    required this.completionRatio,
    required this.copy,
    required this.creationTime,
    required this.dataMaskingStatistics,
    required this.endTime,
    required this.extract,
    required this.load,
    required this.numChildJobs,
    required this.parentJobId,
    required this.query,
    required this.quotaDeferments,
    required this.reservationId,
    required this.reservationUsage,
    required this.rowLevelSecurityStatistics,
    required this.scriptStatistics,
    required this.sessionInfo,
    required this.startTime,
    required this.totalBytesProcessed,
    required this.totalSlotMs,
    required this.transactionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionRatio': completionRatio,
      'copy': pulumi.Input.mapInputValue<JobStatistics5Response, Map<String, dynamic>>(copy, (value) => value.toMap()),
      'creationTime': creationTime,
      'dataMaskingStatistics': pulumi.Input.mapInputValue<DataMaskingStatisticsResponse, Map<String, dynamic>>(dataMaskingStatistics, (value) => value.toMap()),
      'endTime': endTime,
      'extract': pulumi.Input.mapInputValue<JobStatistics4Response, Map<String, dynamic>>(extract, (value) => value.toMap()),
      'load': pulumi.Input.mapInputValue<JobStatistics3Response, Map<String, dynamic>>(load, (value) => value.toMap()),
      'numChildJobs': numChildJobs,
      'parentJobId': parentJobId,
      'query': pulumi.Input.mapInputValue<JobStatistics2Response, Map<String, dynamic>>(query, (value) => value.toMap()),
      'quotaDeferments': quotaDeferments,
      'reservationId': reservationId,
      'reservationUsage': pulumi.Input.mapInputValue<List<JobStatisticsReservationUsageItemResponse>, List<Map<String, dynamic>>>(reservationUsage, (value) => pulumi.Input.encodeList<JobStatisticsReservationUsageItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowLevelSecurityStatistics': pulumi.Input.mapInputValue<RowLevelSecurityStatisticsResponse, Map<String, dynamic>>(rowLevelSecurityStatistics, (value) => value.toMap()),
      'scriptStatistics': pulumi.Input.mapInputValue<ScriptStatisticsResponse, Map<String, dynamic>>(scriptStatistics, (value) => value.toMap()),
      'sessionInfo': pulumi.Input.mapInputValue<SessionInfoResponse, Map<String, dynamic>>(sessionInfo, (value) => value.toMap()),
      'startTime': startTime,
      'totalBytesProcessed': totalBytesProcessed,
      'totalSlotMs': totalSlotMs,
      'transactionInfo': pulumi.Input.mapInputValue<TransactionInfoResponse, Map<String, dynamic>>(transactionInfo, (value) => value.toMap()),
    };
  }

  factory JobStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return JobStatisticsResponse(
      completionRatio: pulumi.Input.fromValue(map['completionRatio'] as double),
      copy: pulumi.Input.fromValue(JobStatistics5Response.fromMap((map['copy']! as Map).cast<String, dynamic>())),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      dataMaskingStatistics: pulumi.Input.fromValue(DataMaskingStatisticsResponse.fromMap((map['dataMaskingStatistics']! as Map).cast<String, dynamic>())),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      extract: pulumi.Input.fromValue(JobStatistics4Response.fromMap((map['extract']! as Map).cast<String, dynamic>())),
      load: pulumi.Input.fromValue(JobStatistics3Response.fromMap((map['load']! as Map).cast<String, dynamic>())),
      numChildJobs: pulumi.Input.fromValue(map['numChildJobs'] as String),
      parentJobId: pulumi.Input.fromValue(map['parentJobId'] as String),
      query: pulumi.Input.fromValue(JobStatistics2Response.fromMap((map['query']! as Map).cast<String, dynamic>())),
      quotaDeferments: pulumi.Input.fromValue((map['quotaDeferments'] as List).cast<String>()),
      reservationId: pulumi.Input.fromValue(map['reservationId'] as String),
      reservationUsage: pulumi.Input.fromValue(pulumi.Input.decodeList<JobStatisticsReservationUsageItemResponse>(map['reservationUsage']!, (value) => JobStatisticsReservationUsageItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
      rowLevelSecurityStatistics: pulumi.Input.fromValue(RowLevelSecurityStatisticsResponse.fromMap((map['rowLevelSecurityStatistics']! as Map).cast<String, dynamic>())),
      scriptStatistics: pulumi.Input.fromValue(ScriptStatisticsResponse.fromMap((map['scriptStatistics']! as Map).cast<String, dynamic>())),
      sessionInfo: pulumi.Input.fromValue(SessionInfoResponse.fromMap((map['sessionInfo']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      totalBytesProcessed: pulumi.Input.fromValue(map['totalBytesProcessed'] as String),
      totalSlotMs: pulumi.Input.fromValue(map['totalSlotMs'] as String),
      transactionInfo: pulumi.Input.fromValue(TransactionInfoResponse.fromMap((map['transactionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

