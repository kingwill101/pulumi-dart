// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config.dart';

/// Input properties used for looking up and filtering JobTemplate resources.
class JobTemplateState {
  /// The configuration for this template.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfig>? config;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// ID to use for the Transcoding job template.
  final pulumi.Input<String>? jobTemplateId;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the transcoding job template resource.
  final pulumi.Input<String>? location;
  /// The resource name of the job template.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [JobTemplateState].
  /// [config] The configuration for this template.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [jobTemplateId] ID to use for the Transcoding job template.
  /// [labels] The labels associated with this job template. You can use these to organize and group your job templates.
  /// [location] The location of the transcoding job template resource.
  /// [name] The resource name of the job template.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  JobTemplateState({
    this.config,
    this.effectiveLabels,
    this.jobTemplateId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'jobTemplateId': ?jobTemplateId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory JobTemplateState.fromMap(Map<String, dynamic> map) {
    return JobTemplateState(
      config: map['config'] == null ? null : (JobTemplateConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      jobTemplateId: map['jobTemplateId'] == null ? null : (map['jobTemplateId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
    );
  }
}

