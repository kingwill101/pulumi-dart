// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datapipelines_v1_flex_template_runtime_environment.dart';

/// Launch Flex Template parameter.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter {
  /// Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
  final pulumi.Input<String>? containerSpecGcsPath;
  /// The runtime environment for the Flex Template job.
  final pulumi.Input<GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment>? environment;
  /// The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  final pulumi.Input<String> jobName;
  /// Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
  final pulumi.Input<Map<String, String>>? launchOptions;
  /// The parameters for the Flex Template. Example: `{"num_workers":"5"}`
  final pulumi.Input<Map<String, String>>? parameters;
  /// Use this to pass transform name mappings for streaming update jobs. Example: `{"oldTransformName":"newTransformName",...}`
  final pulumi.Input<Map<String, String>>? transformNameMappings;
  /// Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
  final pulumi.Input<bool>? update;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter].
  /// [containerSpecGcsPath] Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
  /// [environment] The runtime environment for the Flex Template job.
  /// [jobName] The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  /// [launchOptions] Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
  /// [parameters] The parameters for the Flex Template. Example: `{"num_workers":"5"}`
  /// [transformNameMappings] Use this to pass transform name mappings for streaming update jobs. Example: `{"oldTransformName":"newTransformName",...}`
  /// [update] Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter({
    this.containerSpecGcsPath,
    this.environment,
    required this.jobName,
    this.launchOptions,
    this.parameters,
    this.transformNameMappings,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpecGcsPath': ?containerSpecGcsPath,
      'environment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'jobName': jobName,
      'launchOptions': ?launchOptions,
      'parameters': ?parameters,
      'transformNameMappings': ?transformNameMappings,
      'update': ?update,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter(
      containerSpecGcsPath: (() { final guardedValue = map['containerSpecGcsPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      launchOptions: (() { final guardedValue = map['launchOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transformNameMappings: (() { final guardedValue = map['transformNameMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

