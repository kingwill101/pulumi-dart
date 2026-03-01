// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// The configuration for this template.
  /// Structure is documented below.
  final pulumi.Input<JobConfig>? config;
  /// The time the job was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The time the transcoding finished.
  final pulumi.Input<String>? endTime;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the transcoding job resource.
  final pulumi.Input<String>? location;
  /// The resource name of the job.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The time the transcoding started.
  final pulumi.Input<String>? startTime;
  /// The current state of the job.
  final pulumi.Input<String>? state;
  /// Specify the templateId to use for populating Job.config.
  /// The default is preset/web-hd, which is the only supported preset.
  final pulumi.Input<String>? templateId;

  /// Creates a new [JobState].
  /// [config] The configuration for this template.
  /// [createTime] The time the job was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endTime] The time the transcoding finished.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [location] The location of the transcoding job resource.
  /// [name] The resource name of the job.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [startTime] The time the transcoding started.
  /// [state] The current state of the job.
  /// [templateId] Specify the templateId to use for populating Job.config.
  JobState({
    pulumi.Output<JobConfig>? config,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? endTime,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? state,
    pulumi.Output<String>? templateId,
  }) :
      config = pulumi.Input.asOptionalInput<JobConfig>(config),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      state = pulumi.Input.asOptionalInput<String>(state),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'endTime': ?endTime,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'startTime': ?startTime,
      'state': ?state,
      'templateId': ?templateId,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      config: map['config'] == null ? null : pulumi.Output.create<JobConfig>(JobConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
    );
  }
}

