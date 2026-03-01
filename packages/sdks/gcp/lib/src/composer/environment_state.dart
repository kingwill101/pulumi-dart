// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'environment_storage_config.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// Configuration parameters for this environment.
  final pulumi.Input<EnvironmentConfig>? config;
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the environment.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String>? region;
  /// Configuration options for storage used by Composer environment.
  final pulumi.Input<EnvironmentStorageConfig>? storageConfig;

  /// Creates a new [EnvironmentState].
  /// [config] Configuration parameters for this environment.
  /// [effectiveLabels] Optional.
  /// [labels] User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size.
  /// [name] Name of the environment.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] The location or Compute Engine region for the environment.
  /// [storageConfig] Configuration options for storage used by Composer environment.
  EnvironmentState({
    pulumi.Output<EnvironmentConfig>? config,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<EnvironmentStorageConfig>? storageConfig,
  }) :
      config = pulumi.Input.asOptionalInput<EnvironmentConfig>(config),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageConfig = pulumi.Input.asOptionalInput<EnvironmentStorageConfig>(storageConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      config: map['config'] == null ? null : pulumi.Output.create<EnvironmentConfig>(EnvironmentConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageConfig: map['storageConfig'] == null ? null : pulumi.Output.create<EnvironmentStorageConfig>(EnvironmentStorageConfig.fromMap((map['storageConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

