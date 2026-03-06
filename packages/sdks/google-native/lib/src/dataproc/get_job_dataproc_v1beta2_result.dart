// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_job_response_dataproc_v1beta2.dart';
import 'hive_job_response_dataproc_v1beta2.dart';
import 'job_placement_response_dataproc_v1beta2.dart';
import 'job_reference_response_dataproc_v1beta2.dart';
import 'job_scheduling_response_dataproc_v1beta2.dart';
import 'job_status_response_dataproc_v1beta2.dart';
import 'pig_job_response_dataproc_v1beta2.dart';
import 'presto_job_response_dataproc_v1beta2.dart';
import 'py_spark_job_response_dataproc_v1beta2.dart';
import 'spark_job_response_dataproc_v1beta2.dart';
import 'spark_rjob_response_dataproc_v1beta2.dart';
import 'spark_sql_job_response_dataproc_v1beta2.dart';
import 'yarn_application_response_dataproc_v1beta2.dart';

/// Result data returned by getJob.
class GetJobDataprocV1beta2Result {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  final bool done;
  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  final String driverControlFilesUri;
  /// A URI pointing to the location of the stdout of the job's driver program.
  final String driverOutputResourceUri;
  /// Optional. Job is a Hadoop job.
  final HadoopJobResponseDataprocV1beta2 hadoopJob;
  /// Optional. Job is a Hive job.
  final HiveJobResponseDataprocV1beta2 hiveJob;
  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
  final String jobUuid;
  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final Map<String, String> labels;
  /// Optional. Job is a Pig job.
  final PigJobResponseDataprocV1beta2 pigJob;
  /// Job information, including how, when, and where to run the job.
  final JobPlacementResponseDataprocV1beta2 placement;
  /// Optional. Job is a Presto job.
  final PrestoJobResponseDataprocV1beta2 prestoJob;
  /// Optional. Job is a PySpark job.
  final PySparkJobResponseDataprocV1beta2 pysparkJob;
  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final JobReferenceResponseDataprocV1beta2 reference;
  /// Optional. Job scheduling configuration.
  final JobSchedulingResponseDataprocV1beta2 scheduling;
  /// Optional. Job is a Spark job.
  final SparkJobResponseDataprocV1beta2 sparkJob;
  /// Optional. Job is a SparkR job.
  final SparkRJobResponseDataprocV1beta2 sparkRJob;
  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponseDataprocV1beta2 sparkSqlJob;
  /// The job status. Additional application-specific status information may be contained in the type_job and yarn_applications fields.
  final JobStatusResponseDataprocV1beta2 status;
  /// The previous job status.
  final List<JobStatusResponseDataprocV1beta2> statusHistory;
  /// The email address of the user submitting the job. For jobs submitted on the cluster, the address is username@hostname.
  final String submittedBy;
  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final List<YarnApplicationResponseDataprocV1beta2> yarnApplications;

  /// Creates a new [GetJobDataprocV1beta2Result].
  /// [done] Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  /// [driverControlFilesUri] If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  /// [driverOutputResourceUri] A URI pointing to the location of the stdout of the job's driver program.
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [jobUuid] A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
  /// [labels] Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [placement] Job information, including how, when, and where to run the job.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [reference] Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  /// [status] The job status. Additional application-specific status information may be contained in the type_job and yarn_applications fields.
  /// [statusHistory] The previous job status.
  /// [submittedBy] The email address of the user submitting the job. For jobs submitted on the cluster, the address is username@hostname.
  /// [yarnApplications] The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  const GetJobDataprocV1beta2Result({
    required this.done,
    required this.driverControlFilesUri,
    required this.driverOutputResourceUri,
    required this.hadoopJob,
    required this.hiveJob,
    required this.jobUuid,
    required this.labels,
    required this.pigJob,
    required this.placement,
    required this.prestoJob,
    required this.pysparkJob,
    required this.reference,
    required this.scheduling,
    required this.sparkJob,
    required this.sparkRJob,
    required this.sparkSqlJob,
    required this.status,
    required this.statusHistory,
    required this.submittedBy,
    required this.yarnApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'done': done,
      'driverControlFilesUri': driverControlFilesUri,
      'driverOutputResourceUri': driverOutputResourceUri,
      'hadoopJob': hadoopJob.toMap(),
      'hiveJob': hiveJob.toMap(),
      'jobUuid': jobUuid,
      'labels': labels,
      'pigJob': pigJob.toMap(),
      'placement': placement.toMap(),
      'prestoJob': prestoJob.toMap(),
      'pysparkJob': pysparkJob.toMap(),
      'reference': reference.toMap(),
      'scheduling': scheduling.toMap(),
      'sparkJob': sparkJob.toMap(),
      'sparkRJob': sparkRJob.toMap(),
      'sparkSqlJob': sparkSqlJob.toMap(),
      'status': status.toMap(),
      'statusHistory': pulumi.Input.encodeList<JobStatusResponseDataprocV1beta2, Map<String, dynamic>>(statusHistory, (value) => value.toMap()),
      'submittedBy': submittedBy,
      'yarnApplications': pulumi.Input.encodeList<YarnApplicationResponseDataprocV1beta2, Map<String, dynamic>>(yarnApplications, (value) => value.toMap()),
    };
  }

  factory GetJobDataprocV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetJobDataprocV1beta2Result(
      done: map['done'] as bool,
      driverControlFilesUri: map['driverControlFilesUri'] as String,
      driverOutputResourceUri: map['driverOutputResourceUri'] as String,
      hadoopJob: HadoopJobResponseDataprocV1beta2.fromMap((map['hadoopJob']! as Map).cast<String, dynamic>()),
      hiveJob: HiveJobResponseDataprocV1beta2.fromMap((map['hiveJob']! as Map).cast<String, dynamic>()),
      jobUuid: map['jobUuid'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      pigJob: PigJobResponseDataprocV1beta2.fromMap((map['pigJob']! as Map).cast<String, dynamic>()),
      placement: JobPlacementResponseDataprocV1beta2.fromMap((map['placement']! as Map).cast<String, dynamic>()),
      prestoJob: PrestoJobResponseDataprocV1beta2.fromMap((map['prestoJob']! as Map).cast<String, dynamic>()),
      pysparkJob: PySparkJobResponseDataprocV1beta2.fromMap((map['pysparkJob']! as Map).cast<String, dynamic>()),
      reference: JobReferenceResponseDataprocV1beta2.fromMap((map['reference']! as Map).cast<String, dynamic>()),
      scheduling: JobSchedulingResponseDataprocV1beta2.fromMap((map['scheduling']! as Map).cast<String, dynamic>()),
      sparkJob: SparkJobResponseDataprocV1beta2.fromMap((map['sparkJob']! as Map).cast<String, dynamic>()),
      sparkRJob: SparkRJobResponseDataprocV1beta2.fromMap((map['sparkRJob']! as Map).cast<String, dynamic>()),
      sparkSqlJob: SparkSqlJobResponseDataprocV1beta2.fromMap((map['sparkSqlJob']! as Map).cast<String, dynamic>()),
      status: JobStatusResponseDataprocV1beta2.fromMap((map['status']! as Map).cast<String, dynamic>()),
      statusHistory: pulumi.Input.decodeList<JobStatusResponseDataprocV1beta2>(map['statusHistory']!, (value) => JobStatusResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      submittedBy: map['submittedBy'] as String,
      yarnApplications: pulumi.Input.decodeList<YarnApplicationResponseDataprocV1beta2>(map['yarnApplications']!, (value) => YarnApplicationResponseDataprocV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

