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
    this.config,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.storageConfig,
  });

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
      config: map['config'] == null ? null : (EnvironmentConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      storageConfig: map['storageConfig'] == null ? null : (EnvironmentStorageConfig.fromMap((map['storageConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

