// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_launch_flex_template_parameter.dart';

/// A request to launch a Dataflow job from a Flex Template.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest {
  /// Parameter to launch a job from a Flex Template.
  final pulumi.Input<GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter> launchParameter;
  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.
  final pulumi.Input<String> location;
  /// The ID of the Cloud Platform project that the job belongs to.
  final pulumi.Input<String> project;
  /// If true, the request is validated but not actually executed. Defaults to false.
  final pulumi.Input<bool>? validateOnly;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest].
  /// [launchParameter] Parameter to launch a job from a Flex Template.
  /// [location] The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. For example, `us-central1`, `us-west1`.
  /// [project] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] If true, the request is validated but not actually executed. Defaults to false.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest({
    required this.launchParameter,
    required this.location,
    required this.project,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchParameter': pulumi.Input.mapInputValue<GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter, Map<String, dynamic>>(launchParameter, (value) => value.toMap()),
      'location': location,
      'project': project,
      'validateOnly': ?validateOnly,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest(
      launchParameter: pulumi.Input.fromValue(GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromMap((map['launchParameter']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      validateOnly: (() { final guardedValue = map['validateOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

