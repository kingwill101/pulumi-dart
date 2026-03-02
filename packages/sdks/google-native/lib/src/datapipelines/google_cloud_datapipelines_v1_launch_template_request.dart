// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_launch_template_parameters.dart';

/// A request to launch a template.
class GoogleCloudDatapipelinesV1LaunchTemplateRequest {
  /// A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.
  final pulumi.Input<String>? gcsPath;
  /// The parameters of the template to launch. This should be part of the body of the POST request.
  final pulumi.Input<GoogleCloudDatapipelinesV1LaunchTemplateParameters>? launchParameters;
  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  final pulumi.Input<String>? location;
  /// The ID of the Cloud Platform project that the job belongs to.
  final pulumi.Input<String> project;
  /// If true, the request is validated but not actually executed. Defaults to false.
  final pulumi.Input<bool>? validateOnly;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchTemplateRequest].
  /// [gcsPath] A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.
  /// [launchParameters] The parameters of the template to launch. This should be part of the body of the POST request.
  /// [location] The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  /// [project] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] If true, the request is validated but not actually executed. Defaults to false.
  GoogleCloudDatapipelinesV1LaunchTemplateRequest({
    this.gcsPath,
    this.launchParameters,
    this.location,
    required this.project,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsPath': ?gcsPath,
      'launchParameters': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1LaunchTemplateParameters, Map<String, dynamic>>(launchParameters, (value) => value.toMap()),
      'location': ?location,
      'project': project,
      'validateOnly': ?validateOnly,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchTemplateRequest(
      gcsPath: map['gcsPath'] == null ? null : (map['gcsPath'] as String).input(),
      launchParameters: map['launchParameters'] == null ? null : (GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromMap((map['launchParameters'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: (map['project'] as String).input(),
      validateOnly: map['validateOnly'] == null ? null : (map['validateOnly'] as bool).input(),
    );
  }
}

