// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_runtime_environment_response.dart';

/// Parameters to provide to the template being launched.
class GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse {
  /// The runtime environment for the job.
  final pulumi.Input<GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse> environment;
  /// The job name to use for the created job.
  final pulumi.Input<String> jobName;
  /// The runtime parameters to pass to the job.
  final pulumi.Input<Map<String, String>> parameters;
  /// Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  final pulumi.Input<Map<String, String>> transformNameMapping;
  /// If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  final pulumi.Input<bool> update;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse].
  /// [environment] The runtime environment for the job.
  /// [jobName] The job name to use for the created job.
  /// [parameters] The runtime parameters to pass to the job.
  /// [transformNameMapping] Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  /// [update] If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse({
    required this.environment,
    required this.jobName,
    required this.parameters,
    required this.transformNameMapping,
    required this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': pulumi.Input.mapInputValue<GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'jobName': jobName,
      'parameters': parameters,
      'transformNameMapping': transformNameMapping,
      'update': update,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse(
      environment: (GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse.fromMap((map['environment'] as Map).cast<String, dynamic>())).input(),
      jobName: (map['jobName'] as String).input(),
      parameters: ((map['parameters'] as Map).cast<String, String>()).input(),
      transformNameMapping: ((map['transformNameMapping'] as Map).cast<String, String>()).input(),
      update: (map['update'] as bool).input(),
    );
  }
}

