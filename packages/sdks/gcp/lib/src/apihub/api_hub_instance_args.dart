// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_hub_instance_config.dart';

/// {@template pulumi_apihub_api_hub_instance_api_hub_instance_args_doc}
/// The set of arguments for ApiHubInstance.
/// {@endtemplate}
/// {@macro pulumi_apihub_api_hub_instance_api_hub_instance_args_doc}
class ApiHubInstanceArgs {
  /// Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// scope of the parent resource. If the field is not provided,
  /// system generated id will be used.
  /// This value should be 4-40 characters, and valid characters
  /// are `/a-z[0-9]-_/`.
  final pulumi.Input<String>? apiHubInstanceId;
  /// Available configurations to provision an ApiHub Instance.
  /// Structure is documented below.
  final pulumi.Input<ApiHubInstanceConfig> config;
  /// Optional. Description of the ApiHub instance.
  final pulumi.Input<String>? description;
  /// Optional. Instance labels to represent user-provided metadata.
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ApiHubInstanceArgs].
  /// [apiHubInstanceId] Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// [config] Available configurations to provision an ApiHub Instance.
  /// [description] Optional. Description of the ApiHub instance.
  /// [labels] Optional. Instance labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  ApiHubInstanceArgs({
    this.apiHubInstanceId,
    required this.config,
    this.description,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiHubInstanceId': ?apiHubInstanceId,
      'config': pulumi.Input.mapInputValue<ApiHubInstanceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory ApiHubInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ApiHubInstanceArgs(
      apiHubInstanceId: map['apiHubInstanceId'] == null ? null : (map['apiHubInstanceId'] as String).input(),
      config: (ApiHubInstanceConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

