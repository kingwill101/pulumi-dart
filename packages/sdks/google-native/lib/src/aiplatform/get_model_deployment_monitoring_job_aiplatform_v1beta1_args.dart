// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_model_deployment_monitoring_job_aiplatform_v1beta1_args_doc}
/// Arguments for getModelDeploymentMonitoringJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_model_deployment_monitoring_job_aiplatform_v1beta1_args_doc}
class GetModelDeploymentMonitoringJobAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelDeploymentMonitoringJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelDeploymentMonitoringJobAiplatformV1beta1Args].
  /// [location] Required.
  /// [modelDeploymentMonitoringJobId] Required.
  /// [project] Optional.
  GetModelDeploymentMonitoringJobAiplatformV1beta1Args({
    required this.location,
    required this.modelDeploymentMonitoringJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'modelDeploymentMonitoringJobId': modelDeploymentMonitoringJobId,
      'project': ?project,
    };
  }

  factory GetModelDeploymentMonitoringJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetModelDeploymentMonitoringJobAiplatformV1beta1Args(
      location: (map['location'] as String).input(),
      modelDeploymentMonitoringJobId: (map['modelDeploymentMonitoringJobId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

