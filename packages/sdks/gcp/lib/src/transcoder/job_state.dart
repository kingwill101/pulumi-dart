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
      'config':
          ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(
            config,
            (value) => value.toMap(),
          ),
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
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
