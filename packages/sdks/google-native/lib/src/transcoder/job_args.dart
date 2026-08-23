// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';
import 'job_mode.dart';
import 'job_optimization.dart';

/// {@template pulumi_transcoder_v1_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_transcoder_v1_job_args_doc}
class JobArgs {
  /// The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  final pulumi.Input<int>? batchModePriority;
  /// The configuration for this job.
  final pulumi.Input<JobConfig>? config;
  /// Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final pulumi.Input<String>? inputUri;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  final pulumi.Input<JobMode>? mode;
  /// The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  final pulumi.Input<String>? name;
  /// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  final pulumi.Input<JobOptimization>? optimization;
  /// Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final pulumi.Input<String>? outputUri;
  final pulumi.Input<String>? project;
  /// Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  final pulumi.Input<String>? templateId;
  /// Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  final pulumi.Input<int>? ttlAfterCompletionDays;

  /// Creates a new [JobArgs].
  /// [batchModePriority] The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  /// [config] The configuration for this job.
  /// [inputUri] Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [location] Optional.
  /// [mode] The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  /// [name] The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  /// [optimization] Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  /// [outputUri] Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [project] Optional.
  /// [templateId] Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  /// [ttlAfterCompletionDays] Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  const JobArgs({
    this.batchModePriority,
    this.config,
    this.inputUri,
    this.labels,
    this.location,
    this.mode,
    this.name,
    this.optimization,
    this.outputUri,
    this.project,
    this.templateId,
    this.ttlAfterCompletionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchModePriority': ?batchModePriority,
      'config': ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'inputUri': ?inputUri,
      'labels': ?labels,
      'location': ?location,
      'mode': ?pulumi.Input.mapOptionalInputValue<JobMode, String>(mode, (value) => value.wireValue),
      'name': ?name,
      'optimization': ?pulumi.Input.mapOptionalInputValue<JobOptimization, String>(optimization, (value) => value.wireValue),
      'outputUri': ?outputUri,
      'project': ?project,
      'templateId': ?templateId,
      'ttlAfterCompletionDays': ?ttlAfterCompletionDays,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      batchModePriority: (() { final guardedValue = map['batchModePriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputUri: (() { final guardedValue = map['inputUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobMode.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimization: (() { final guardedValue = map['optimization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobOptimization.fromValue(guardedValue as String)); })(),
      outputUri: (() { final guardedValue = map['outputUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttlAfterCompletionDays: (() { final guardedValue = map['ttlAfterCompletionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
