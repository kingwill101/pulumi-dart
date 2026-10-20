// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_response.dart';
import 'status_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  final int? batchModePriority;
  /// The configuration for this job.
  final JobConfigResponse? config;
  /// The time the job was created.
  final String? createTime;
  /// The time the transcoding finished.
  final String? endTime;
  /// An error object that describes the reason for the failure. This property is always present when ProcessingState is `FAILED`.
  final StatusResponse? error;
  /// Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String? inputUri;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  final Map<String, String>? labels;
  /// The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  final String? mode;
  /// The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  final String? name;
  /// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  final String? optimization;
  /// Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String? outputUri;
  /// The time the transcoding started.
  final String? startTime;
  /// The current state of the job.
  final String? state;
  /// Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  final String? templateId;
  /// Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  final int? ttlAfterCompletionDays;

  /// Creates a new [GetJobResult].
  /// [batchModePriority] The processing priority of a batch job. This field can only be set for batch mode jobs. The default value is 0. This value cannot be negative. Higher values correspond to higher priorities for the job.
  /// [config] The configuration for this job.
  /// [createTime] The time the job was created.
  /// [endTime] The time the transcoding finished.
  /// [error] An error object that describes the reason for the failure. This property is always present when ProcessingState is `FAILED`.
  /// [inputUri] Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [mode] The processing mode of the job. The default is `PROCESSING_MODE_INTERACTIVE`.
  /// [name] The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  /// [optimization] Optional. The optimization strategy of the job. The default is `AUTODETECT`.
  /// [outputUri] Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  /// [startTime] The time the transcoding started.
  /// [state] The current state of the job.
  /// [templateId] Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`, which is the only supported preset. User defined JobTemplate: `{job_template_id}`
  /// [ttlAfterCompletionDays] Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.
  const GetJobResult({
    this.batchModePriority,
    this.config,
    this.createTime,
    this.endTime,
    this.error,
    this.inputUri,
    this.labels,
    this.mode,
    this.name,
    this.optimization,
    this.outputUri,
    this.startTime,
    this.state,
    this.templateId,
    this.ttlAfterCompletionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchModePriority': ?batchModePriority,
      'config': ?config?.toMap(),
      'createTime': ?createTime,
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'inputUri': ?inputUri,
      'labels': ?labels,
      'mode': ?mode,
      'name': ?name,
      'optimization': ?optimization,
      'outputUri': ?outputUri,
      'startTime': ?startTime,
      'state': ?state,
      'templateId': ?templateId,
      'ttlAfterCompletionDays': ?ttlAfterCompletionDays,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      batchModePriority: (() { final guardedValue = map['batchModePriority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return JobConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inputUri: (() { final guardedValue = map['inputUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optimization: (() { final guardedValue = map['optimization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputUri: (() { final guardedValue = map['outputUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttlAfterCompletionDays: (() { final guardedValue = map['ttlAfterCompletionDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
