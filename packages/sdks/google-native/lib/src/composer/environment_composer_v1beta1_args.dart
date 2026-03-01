// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_composer_v1beta1.dart';
import 'environment_state_composer_v1beta1.dart';
import 'storage_config_composer_v1beta1.dart';

/// {@template pulumi_composer_v1beta1_environment_composer_v1beta1_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_composer_v1beta1_environment_composer_v1beta1_args_doc}
class EnvironmentComposerV1beta1Args {
  /// Configuration parameters for this environment.
  final pulumi.Input<EnvironmentConfigComposerV1beta1>? config;
  /// Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The current state of the environment.
  final pulumi.Input<EnvironmentStateComposerV1beta1>? state;
  /// Optional. Storage configuration for this environment.
  final pulumi.Input<StorageConfigComposerV1beta1>? storageConfig;

  /// Creates a new [EnvironmentComposerV1beta1Args].
  /// [config] Configuration parameters for this environment.
  /// [labels] Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  /// [location] Optional.
  /// [name] The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  /// [project] Optional.
  /// [state] The current state of the environment.
  /// [storageConfig] Optional. Storage configuration for this environment.
  EnvironmentComposerV1beta1Args({
    pulumi.Output<EnvironmentConfigComposerV1beta1>? config,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<EnvironmentStateComposerV1beta1>? state,
    pulumi.Output<StorageConfigComposerV1beta1>? storageConfig,
  }) :
      config = pulumi.Input.asOptionalInput<EnvironmentConfigComposerV1beta1>(config),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<EnvironmentStateComposerV1beta1>(state),
      storageConfig = pulumi.Input.asOptionalInput<StorageConfigComposerV1beta1>(storageConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigComposerV1beta1, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<EnvironmentStateComposerV1beta1, String>(state, (value) => value.value),
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<StorageConfigComposerV1beta1, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentComposerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentComposerV1beta1Args(
      config: map['config'] == null ? null : pulumi.Output.create<EnvironmentConfigComposerV1beta1>(EnvironmentConfigComposerV1beta1.fromMap((map['config'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<EnvironmentStateComposerV1beta1>(EnvironmentStateComposerV1beta1.fromValue(map['state'] as String)),
      storageConfig: map['storageConfig'] == null ? null : pulumi.Output.create<StorageConfigComposerV1beta1>(StorageConfigComposerV1beta1.fromMap((map['storageConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

