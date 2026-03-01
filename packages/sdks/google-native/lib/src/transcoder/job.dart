import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_config_response.dart';
import 'status_response.dart';

/// Creates a job in the specified region.
class Job extends pulumi.CustomResource {
  /// The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  late final pulumi.Output<int> batchModePriority;
  /// The configuration for this job.
  late final pulumi.Output<JobConfigResponse> config;
  /// The time the job was created.
  late final pulumi.Output<String> createTime;
  /// The time the transcoding finished.
  late final pulumi.Output<String> endTime;
  /// An error object that describes the reason for the failure. This property is always present when ProcessingState is `FAILED`.
  late final pulumi.Output<StatusResponse> error;
  /// Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  late final pulumi.Output<String> inputUri;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  late final pulumi.Output<String> mode;
  /// The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  late final pulumi.Output<String> name;
  /// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  late final pulumi.Output<String> optimization;
  /// Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  late final pulumi.Output<String> outputUri;
  late final pulumi.Output<String> project;
  /// The time the transcoding started.
  late final pulumi.Output<String> startTime;
  /// The current state of the job.
  late final pulumi.Output<String> state;
  /// Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  late final pulumi.Output<String> templateId;
  /// Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  late final pulumi.Output<int> ttlAfterCompletionDays;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_transcoder_v1_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:transcoder/v1:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.batchModePriority = registerOutput<int>('batchModePriority');
    this.config = registerOutput<JobConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<StatusResponse>('error');
    this.inputUri = registerOutput<String>('inputUri');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.optimization = registerOutput<String>('optimization');
    this.outputUri = registerOutput<String>('outputUri');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.templateId = registerOutput<String>('templateId');
    this.ttlAfterCompletionDays = registerOutput<int>('ttlAfterCompletionDays');
  }
}
