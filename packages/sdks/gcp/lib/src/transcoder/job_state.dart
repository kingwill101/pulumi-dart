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
    this.config,
    this.createTime,
    this.effectiveLabels,
    this.endTime,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.startTime,
    this.state,
    this.templateId,
  });

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
      config: map['config'] == null ? null : (JobConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
    );
  }
}

