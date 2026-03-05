import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_configuration_response.dart';
import 'job_reference_response.dart';
import 'job_statistics_response.dart';
import 'job_status_response.dart';

/// Starts a new asynchronous job. Requires the Can View project role.
/// Auto-naming is currently not supported for this resource.
class Job extends pulumi.CustomResource {
  /// [Required] Describes the job configuration.
  late final pulumi.Output<JobConfigurationResponse> configuration;

  /// A hash of this resource.
  late final pulumi.Output<String> etag;

  /// If set, it provides the reason why a Job was created. If not set, it should be treated as the default: REQUESTED. This feature is not yet available. Jobs will always be created.
  late final pulumi.Output<dynamic> jobCreationReason;

  /// [Optional] Reference describing the unique-per-user name of the job.
  late final pulumi.Output<JobReferenceResponse> jobReference;

  /// The type of the resource.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> project;

  /// A URL that can be used to access this resource again.
  late final pulumi.Output<String> selfLink;

  /// Information about the job, including starting time and ending time of the job.
  late final pulumi.Output<JobStatisticsResponse> statistics;

  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  late final pulumi.Output<JobStatusResponse> status;

  /// Email address of the user who ran the job.
  late final pulumi.Output<String> userEmail;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_bigquery_v2_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:bigquery/v2:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    configuration = registerOutput<JobConfigurationResponse>(
      'configuration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String>('etag');
    jobCreationReason = registerOutput<dynamic>('jobCreationReason');
    jobReference = registerOutput<JobReferenceResponse>(
      'jobReference',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobReferenceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kind = registerOutput<String>('kind');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    statistics = registerOutput<JobStatisticsResponse>(
      'statistics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobStatisticsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<JobStatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    userEmail = registerOutput<String>('userEmail');
  }
}
