// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_runtime_environment.dart';

/// Parameters to provide to the template being launched.
class GoogleCloudDatapipelinesV1LaunchTemplateParameters {
  /// The runtime environment for the job.
  final pulumi.Input<GoogleCloudDatapipelinesV1RuntimeEnvironment>? environment;
  /// The job name to use for the created job.
  final pulumi.Input<String> jobName;
  /// The runtime parameters to pass to the job.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  final pulumi.Input<Map<String, String>>? transformNameMapping;
  /// If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  final pulumi.Input<bool>? update;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchTemplateParameters].
  /// [environment] The runtime environment for the job.
  /// [jobName] The job name to use for the created job.
  /// [parameters] The runtime parameters to pass to the job.
  /// [transformNameMapping] Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  /// [update] If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  const GoogleCloudDatapipelinesV1LaunchTemplateParameters({
    this.environment,
    required this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1RuntimeEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'jobName': jobName,
      'parameters': ?parameters,
      'transformNameMapping': ?transformNameMapping,
      'update': ?update,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchTemplateParameters(
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatapipelinesV1RuntimeEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transformNameMapping: (() { final guardedValue = map['transformNameMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
