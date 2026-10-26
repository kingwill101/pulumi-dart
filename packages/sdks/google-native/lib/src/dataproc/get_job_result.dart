// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_scheduling_config_response.dart';
import 'flink_job_response.dart';
import 'hadoop_job_response.dart';
import 'hive_job_response.dart';
import 'job_placement_response.dart';
import 'job_reference_response.dart';
import 'job_scheduling_response.dart';
import 'job_status_response.dart';
import 'pig_job_response.dart';
import 'presto_job_response.dart';
import 'py_spark_job_response.dart';
import 'spark_job_response.dart';
import 'spark_rjob_response.dart';
import 'spark_sql_job_response.dart';
import 'trino_job_response.dart';
import 'yarn_application_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  final bool? done;
  /// If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.
  final String? driverControlFilesUri;
  /// A URI pointing to the location of the stdout of the job's driver program.
  final String? driverOutputResourceUri;
  /// Optional. Driver scheduling configuration.
  final DriverSchedulingConfigResponse? driverSchedulingConfig;
  /// Optional. Job is a Flink job.
  final FlinkJobResponse? flinkJob;
  /// Optional. Job is a Hadoop job.
  final HadoopJobResponse? hadoopJob;
  /// Optional. Job is a Hive job.
  final HiveJobResponse? hiveJob;
  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
  final String? jobUuid;
  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final Map<String, String>? labels;
  /// Optional. Job is a Pig job.
  final PigJobResponse? pigJob;
  /// Job information, including how, when, and where to run the job.
  final JobPlacementResponse? placement;
  /// Optional. Job is a Presto job.
  final PrestoJobResponse? prestoJob;
  /// Optional. Job is a PySpark job.
  final PySparkJobResponse? pysparkJob;
  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final JobReferenceResponse? reference;
  /// Optional. Job scheduling configuration.
  final JobSchedulingResponse? scheduling;
  /// Optional. Job is a Spark job.
  final SparkJobResponse? sparkJob;
  /// Optional. Job is a SparkR job.
  final SparkRJobResponse? sparkRJob;
  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponse? sparkSqlJob;
  /// The job status. Additional application-specific status information might be contained in the type_job and yarn_applications fields.
  final JobStatusResponse? status;
  /// The previous job status.
  final List<JobStatusResponse>? statusHistory;
  /// Optional. Job is a Trino job.
  final TrinoJobResponse? trinoJob;
  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
  final List<YarnApplicationResponse>? yarnApplications;

  /// Creates a new [GetJobResult].
  /// [done] Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  /// [driverControlFilesUri] If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.
  /// [driverOutputResourceUri] A URI pointing to the location of the stdout of the job's driver program.
  /// [driverSchedulingConfig] Optional. Driver scheduling configuration.
  /// [flinkJob] Optional. Job is a Flink job.
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [jobUuid] A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
  /// [labels] Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [placement] Job information, including how, when, and where to run the job.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [reference] Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  /// [status] The job status. Additional application-specific status information might be contained in the type_job and yarn_applications fields.
  /// [statusHistory] The previous job status.
  /// [trinoJob] Optional. Job is a Trino job.
  /// [yarnApplications] The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
  const GetJobResult({
    this.done,
    this.driverControlFilesUri,
    this.driverOutputResourceUri,
    this.driverSchedulingConfig,
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.jobUuid,
    this.labels,
    this.pigJob,
    this.placement,
    this.prestoJob,
    this.pysparkJob,
    this.reference,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    this.status,
    this.statusHistory,
    this.trinoJob,
    this.yarnApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'done': ?done,
      'driverControlFilesUri': ?driverControlFilesUri,
      'driverOutputResourceUri': ?driverOutputResourceUri,
      'driverSchedulingConfig': ?driverSchedulingConfig?.toMap(),
      'flinkJob': ?flinkJob?.toMap(),
      'hadoopJob': ?hadoopJob?.toMap(),
      'hiveJob': ?hiveJob?.toMap(),
      'jobUuid': ?jobUuid,
      'labels': ?labels,
      'pigJob': ?pigJob?.toMap(),
      'placement': ?placement?.toMap(),
      'prestoJob': ?prestoJob?.toMap(),
      'pysparkJob': ?pysparkJob?.toMap(),
      'reference': ?reference?.toMap(),
      'scheduling': ?scheduling?.toMap(),
      'sparkJob': ?sparkJob?.toMap(),
      'sparkRJob': ?sparkRJob?.toMap(),
      'sparkSqlJob': ?sparkSqlJob?.toMap(),
      'status': ?status?.toMap(),
      'statusHistory': ?(() { final guardedValue = statusHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<JobStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'trinoJob': ?trinoJob?.toMap(),
      'yarnApplications': ?(() { final guardedValue = yarnApplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<YarnApplicationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      done: (() { final guardedValue = map['done']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      driverControlFilesUri: (() { final guardedValue = map['driverControlFilesUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      driverOutputResourceUri: (() { final guardedValue = map['driverOutputResourceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      driverSchedulingConfig: (() { final guardedValue = map['driverSchedulingConfig']; if (guardedValue == null) return null; return DriverSchedulingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      flinkJob: (() { final guardedValue = map['flinkJob']; if (guardedValue == null) return null; return FlinkJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hadoopJob: (() { final guardedValue = map['hadoopJob']; if (guardedValue == null) return null; return HadoopJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hiveJob: (() { final guardedValue = map['hiveJob']; if (guardedValue == null) return null; return HiveJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      jobUuid: (() { final guardedValue = map['jobUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      pigJob: (() { final guardedValue = map['pigJob']; if (guardedValue == null) return null; return PigJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return JobPlacementResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      prestoJob: (() { final guardedValue = map['prestoJob']; if (guardedValue == null) return null; return PrestoJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      pysparkJob: (() { final guardedValue = map['pysparkJob']; if (guardedValue == null) return null; return PySparkJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return JobReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return JobSchedulingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sparkJob: (() { final guardedValue = map['sparkJob']; if (guardedValue == null) return null; return SparkJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sparkRJob: (() { final guardedValue = map['sparkRJob']; if (guardedValue == null) return null; return SparkRJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sparkSqlJob: (() { final guardedValue = map['sparkSqlJob']; if (guardedValue == null) return null; return SparkSqlJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return JobStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      statusHistory: (() { final guardedValue = map['statusHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobStatusResponse>(guardedValue, (value) => JobStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      trinoJob: (() { final guardedValue = map['trinoJob']; if (guardedValue == null) return null; return TrinoJobResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      yarnApplications: (() { final guardedValue = map['yarnApplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<YarnApplicationResponse>(guardedValue, (value) => YarnApplicationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
