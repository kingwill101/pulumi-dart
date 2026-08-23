// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_workload_dataflow_flex_template_request_launch_parameter.dart';

class PipelineWorkloadDataflowFlexTemplateRequest {
  /// Parameter to launch a job from a Flex Template.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplateparameter
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter> launchParameter;
  /// The regional endpoint to which to direct the request. For example, us-central1, us-west1.
  final pulumi.Input<String> location;
  /// The ID of the Cloud Platform project that the job belongs to.
  final pulumi.Input<String> projectId;
  /// If true, the request is validated but not actually executed. Defaults to false.
  final pulumi.Input<bool>? validateOnly;

  /// Creates a new [PipelineWorkloadDataflowFlexTemplateRequest].
  /// [launchParameter] Parameter to launch a job from a Flex Template.
  /// [location] The regional endpoint to which to direct the request. For example, us-central1, us-west1.
  /// [projectId] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] If true, the request is validated but not actually executed. Defaults to false.
  const PipelineWorkloadDataflowFlexTemplateRequest({
    required this.launchParameter,
    required this.location,
    required this.projectId,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchParameter': pulumi.Input.mapInputValue<PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter, Map<String, dynamic>>(launchParameter, (value) => value.toMap()),
      'location': location,
      'projectId': projectId,
      'validateOnly': ?validateOnly,
    };
  }

  factory PipelineWorkloadDataflowFlexTemplateRequest.fromMap(Map<String, dynamic> map) {
    return PipelineWorkloadDataflowFlexTemplateRequest(
      launchParameter: pulumi.Input.fromValue(PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter.fromMap((map['launchParameter']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      validateOnly: (() { final guardedValue = map['validateOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
