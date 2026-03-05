// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config.dart';
import 'get_environment_storage_config.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Configuration parameters for the environment.
  final List<GetEnvironmentConfig> configs;
  final Map<String, String> effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final List<GetEnvironmentStorageConfig> storageConfigs;

  /// Creates a new [GetEnvironmentResult].
  /// [configs] Configuration parameters for the environment.
  /// [effectiveLabels] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [storageConfigs] Required.
  GetEnvironmentResult({
    required this.configs,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetEnvironmentConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'id': id,
      'labels': labels,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'storageConfigs': pulumi.Input.encodeList<GetEnvironmentStorageConfig, Map<String, dynamic>>(storageConfigs, (value) => value.toMap()),
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      configs: pulumi.Input.decodeList<GetEnvironmentConfig>(map['configs']!, (value) => GetEnvironmentConfig.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageConfigs: pulumi.Input.decodeList<GetEnvironmentStorageConfig>(map['storageConfigs']!, (value) => GetEnvironmentStorageConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

