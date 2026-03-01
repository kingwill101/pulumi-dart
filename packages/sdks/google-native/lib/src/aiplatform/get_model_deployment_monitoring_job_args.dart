// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_model_deployment_monitoring_job_args_doc}
/// Arguments for getModelDeploymentMonitoringJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_model_deployment_monitoring_job_args_doc}
class GetModelDeploymentMonitoringJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelDeploymentMonitoringJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelDeploymentMonitoringJobArgs].
  /// [location] Required.
  /// [modelDeploymentMonitoringJobId] Required.
  /// [project] Optional.
  GetModelDeploymentMonitoringJobArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> modelDeploymentMonitoringJobId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      modelDeploymentMonitoringJobId = pulumi.Input.asInput<String>(modelDeploymentMonitoringJobId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'modelDeploymentMonitoringJobId': modelDeploymentMonitoringJobId,
      'project': ?project,
    };
  }

  factory GetModelDeploymentMonitoringJobArgs.fromMap(Map<String, dynamic> map) {
    return GetModelDeploymentMonitoringJobArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      modelDeploymentMonitoringJobId: pulumi.Output.create<String>(map['modelDeploymentMonitoringJobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

