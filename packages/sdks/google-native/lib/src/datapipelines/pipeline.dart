import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_schedule_spec_response.dart';
import 'google_cloud_datapipelines_v1_workload_response.dart';
import 'pipeline_args.dart';

/// Creates a pipeline. For a batch pipeline, you can pass scheduler information. Data Pipelines uses the scheduler information to create an internal scheduler that runs jobs periodically. If the internal scheduler is not configured, you can use RunPipeline to run jobs.
class Pipeline extends pulumi.CustomResource {
  /// Immutable. The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  late final pulumi.Output<String> createTime;

  /// The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  late final pulumi.Output<String> displayName;

  /// Number of jobs.
  late final pulumi.Output<int> jobCount;

  /// Immutable. The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  late final pulumi.Output<String> lastUpdateTime;
  late final pulumi.Output<String> location;

  /// The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.
  late final pulumi.Output<String> name;

  /// Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  late final pulumi.Output<Map<String, String>> pipelineSources;
  late final pulumi.Output<String> project;

  /// Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  late final pulumi.Output<GoogleCloudDatapipelinesV1ScheduleSpecResponse>
  scheduleInfo;

  /// Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  late final pulumi.Output<String> schedulerServiceAccountEmail;

  /// The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
  late final pulumi.Output<String> state;

  /// The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  late final pulumi.Output<String> type;

  /// Workload information for creating new jobs.
  late final pulumi.Output<GoogleCloudDatapipelinesV1WorkloadResponse> workload;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_datapipelines_v1_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datapipelines/v1:Pipeline',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    jobCount = registerOutput<int>('jobCount');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pipelineSources = registerOutput<Map<String, String>>('pipelineSources');
    project = registerOutput<String>('project');
    scheduleInfo =
        registerOutput<GoogleCloudDatapipelinesV1ScheduleSpecResponse>(
          'scheduleInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDatapipelinesV1ScheduleSpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    schedulerServiceAccountEmail = registerOutput<String>(
      'schedulerServiceAccountEmail',
    );
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    workload = registerOutput<GoogleCloudDatapipelinesV1WorkloadResponse>(
      'workload',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudDatapipelinesV1WorkloadResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
