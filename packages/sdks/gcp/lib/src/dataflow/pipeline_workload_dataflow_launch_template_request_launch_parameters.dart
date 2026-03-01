// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_workload_dataflow_launch_template_request_launch_parameters_environment.dart';

class PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters {
  /// The runtime environment for the job.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#RuntimeEnvironment
  /// Structure is documented below.
  final PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment? environment;
  /// The job name to use for the created job.
  final String jobName;
  /// The runtime parameters to pass to the job.
  /// 'An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.'
  final Map<String, String>? parameters;
  /// Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  /// 'An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.'
  final Map<String, String>? transformNameMapping;
  /// If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  final bool? update;

  /// Creates a new [PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters].
  /// [environment] The runtime environment for the job.
  /// [jobName] The job name to use for the created job.
  /// [parameters] The runtime parameters to pass to the job.
  /// [transformNameMapping] Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  /// [update] If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters({
    this.environment,
    required this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment == null ? null : environment!.toMap(),
      'jobName': jobName,
      'parameters': ?parameters,
      'transformNameMapping': ?transformNameMapping,
      'update': ?update,
    };
  }

  factory PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters.fromMap(Map<String, dynamic> map) {
    return PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters(
      environment: map['environment'] == null ? null : PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      jobName: map['jobName'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      transformNameMapping: map['transformNameMapping'] == null ? null : (map['transformNameMapping'] as Map).cast<String, String>(),
      update: map['update'] == null ? null : map['update'] as bool,
    );
  }
}

