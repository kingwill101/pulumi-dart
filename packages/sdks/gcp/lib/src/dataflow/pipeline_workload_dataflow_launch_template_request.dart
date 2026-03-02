// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_workload_dataflow_launch_template_request_launch_parameters.dart';

class PipelineWorkloadDataflowLaunchTemplateRequest {
  /// A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.
  final pulumi.Input<String>? gcsPath;
  /// The parameters of the template to launch. This should be part of the body of the POST request.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplateparameters
  /// Structure is documented below.
  final pulumi.Input<PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters>? launchParameters;
  /// The regional endpoint to which to direct the request.
  final pulumi.Input<String>? location;
  /// The ID of the Cloud Platform project that the job belongs to.
  final pulumi.Input<String> projectId;
  /// (Optional)
  final pulumi.Input<bool>? validateOnly;

  /// Creates a new [PipelineWorkloadDataflowLaunchTemplateRequest].
  /// [gcsPath] A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.
  /// [launchParameters] The parameters of the template to launch. This should be part of the body of the POST request.
  /// [location] The regional endpoint to which to direct the request.
  /// [projectId] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] (Optional)
  PipelineWorkloadDataflowLaunchTemplateRequest({
    this.gcsPath,
    this.launchParameters,
    this.location,
    required this.projectId,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsPath': ?gcsPath,
      'launchParameters': ?pulumi.Input.mapOptionalInputValue<PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters, Map<String, dynamic>>(launchParameters, (value) => value.toMap()),
      'location': ?location,
      'projectId': projectId,
      'validateOnly': ?validateOnly,
    };
  }

  factory PipelineWorkloadDataflowLaunchTemplateRequest.fromMap(Map<String, dynamic> map) {
    return PipelineWorkloadDataflowLaunchTemplateRequest(
      gcsPath: map['gcsPath'] == null ? null : (map['gcsPath']! as String).input(),
      launchParameters: map['launchParameters'] == null ? null : (PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters.fromMap((map['launchParameters']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      projectId: (map['projectId'] as String).input(),
      validateOnly: map['validateOnly'] == null ? null : (map['validateOnly']! as bool).input(),
    );
  }
}

