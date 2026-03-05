import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_job_response_dataproc_v1beta2.dart';
import 'hive_job_response_dataproc_v1beta2.dart';
import 'job_dataproc_v1beta2_args.dart';
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

/// Submits a job to a cluster.
/// Auto-naming is currently not supported for this resource.
class JobDataprocV1beta2 extends pulumi.CustomResource {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  late final pulumi.Output<bool> done;
  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  late final pulumi.Output<String> driverControlFilesUri;
  /// A URI pointing to the location of the stdout of the job's driver program.
  late final pulumi.Output<String> driverOutputResourceUri;
  /// Optional. Job is a Hadoop job.
  late final pulumi.Output<HadoopJobResponseDataprocV1beta2> hadoopJob;
  /// Optional. Job is a Hive job.
  late final pulumi.Output<HiveJobResponseDataprocV1beta2> hiveJob;
  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
  late final pulumi.Output<String> jobUuid;
  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  late final pulumi.Output<Map<String, String>> labels;
  /// Optional. Job is a Pig job.
  late final pulumi.Output<PigJobResponseDataprocV1beta2> pigJob;
  /// Job information, including how, when, and where to run the job.
  late final pulumi.Output<JobPlacementResponseDataprocV1beta2> placement;
  /// Optional. Job is a Presto job.
  late final pulumi.Output<PrestoJobResponseDataprocV1beta2> prestoJob;
  late final pulumi.Output<String> project;
  /// Optional. Job is a PySpark job.
  late final pulumi.Output<PySparkJobResponseDataprocV1beta2> pysparkJob;
  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  late final pulumi.Output<JobReferenceResponseDataprocV1beta2> reference;
  late final pulumi.Output<String> region;
  /// Optional. Job scheduling configuration.
  late final pulumi.Output<JobSchedulingResponseDataprocV1beta2> scheduling;
  /// Optional. Job is a Spark job.
  late final pulumi.Output<SparkJobResponseDataprocV1beta2> sparkJob;
  /// Optional. Job is a SparkR job.
  late final pulumi.Output<SparkRJobResponseDataprocV1beta2> sparkRJob;
  /// Optional. Job is a SparkSql job.
  late final pulumi.Output<SparkSqlJobResponseDataprocV1beta2> sparkSqlJob;
  /// The job status. Additional application-specific status information may be contained in the type_job and yarn_applications fields.
  late final pulumi.Output<JobStatusResponseDataprocV1beta2> status;
  /// The previous job status.
  late final pulumi.Output<List<Map<String, dynamic>>> statusHistory;
  /// The email address of the user submitting the job. For jobs submitted on the cluster, the address is username@hostname.
  late final pulumi.Output<String> submittedBy;
  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  late final pulumi.Output<List<Map<String, dynamic>>> yarnApplications;

  /// Creates a new [JobDataprocV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobDataprocV1beta2]. {@macro pulumi_dataproc_v1beta2_job_dataproc_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobDataprocV1beta2(
    String name, {
    JobDataprocV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1beta2:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    done = registerOutput<bool>('done');
    driverControlFilesUri = registerOutput<String>('driverControlFilesUri');
    driverOutputResourceUri = registerOutput<String>('driverOutputResourceUri');
    hadoopJob = registerOutput<HadoopJobResponseDataprocV1beta2>('hadoopJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HadoopJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hiveJob = registerOutput<HiveJobResponseDataprocV1beta2>('hiveJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HiveJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobUuid = registerOutput<String>('jobUuid');
    labels = registerOutput<Map<String, String>>('labels');
    pigJob = registerOutput<PigJobResponseDataprocV1beta2>('pigJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PigJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    placement = registerOutput<JobPlacementResponseDataprocV1beta2>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobPlacementResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prestoJob = registerOutput<PrestoJobResponseDataprocV1beta2>('prestoJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrestoJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pysparkJob = registerOutput<PySparkJobResponseDataprocV1beta2>('pysparkJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PySparkJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reference = registerOutput<JobReferenceResponseDataprocV1beta2>('reference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobReferenceResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scheduling = registerOutput<JobSchedulingResponseDataprocV1beta2>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSchedulingResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkJob = registerOutput<SparkJobResponseDataprocV1beta2>('sparkJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkRJob = registerOutput<SparkRJobResponseDataprocV1beta2>('sparkRJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkRJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkSqlJob = registerOutput<SparkSqlJobResponseDataprocV1beta2>('sparkSqlJob', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkSqlJobResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<JobStatusResponseDataprocV1beta2>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStatusResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statusHistory = registerOutput<List<Map<String, dynamic>>>('statusHistory');
    submittedBy = registerOutput<String>('submittedBy');
    yarnApplications = registerOutput<List<Map<String, dynamic>>>('yarnApplications');
  }
}
