// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config.dart';
import 'get_environment_storage_config.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Configuration parameters for the environment.
  final List<GetEnvironmentConfig>? configs;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final List<GetEnvironmentStorageConfig>? storageConfigs;

  /// Creates a new [GetEnvironmentResult].
  /// [configs] Configuration parameters for the environment.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [storageConfigs] Optional.
  const GetEnvironmentResult({
    this.configs,
    this.deletionPolicy,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?(() { final guardedValue = configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEnvironmentConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'storageConfigs': ?(() { final guardedValue = storageConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEnvironmentStorageConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEnvironmentConfig>(guardedValue, (value) => GetEnvironmentConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageConfigs: (() { final guardedValue = map['storageConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEnvironmentStorageConfig>(guardedValue, (value) => GetEnvironmentStorageConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
