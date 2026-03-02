// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_runtime_config_autotuning_config.dart';

class BatchRuntimeConfig {
  /// Optional. Autotuning configuration of the workload.
  /// Structure is documented below.
  final pulumi.Input<BatchRuntimeConfigAutotuningConfig>? autotuningConfig;
  /// Optional. Cohort identifier. Identifies families of the workloads having the same shape, e.g. daily ETL jobs.
  final pulumi.Input<String>? cohort;
  /// Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final pulumi.Input<String>? containerImage;
  /// (Output)
  /// A mapping of property names to values, which are used to configure workload execution.
  final pulumi.Input<Map<String, String>>? effectiveProperties;
  /// A mapping of property names to values, which are used to configure workload execution.
  final pulumi.Input<Map<String, String>>? properties;
  /// Version of the batch runtime.
  final pulumi.Input<String>? version;

  /// Creates a new [BatchRuntimeConfig].
  /// [autotuningConfig] Optional. Autotuning configuration of the workload.
  /// [cohort] Optional. Cohort identifier. Identifies families of the workloads having the same shape, e.g. daily ETL jobs.
  /// [containerImage] Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  /// [effectiveProperties] (Output)
  /// [properties] A mapping of property names to values, which are used to configure workload execution.
  /// [version] Version of the batch runtime.
  BatchRuntimeConfig({
    this.autotuningConfig,
    this.cohort,
    this.containerImage,
    this.effectiveProperties,
    this.properties,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autotuningConfig': ?pulumi.Input.mapOptionalInputValue<BatchRuntimeConfigAutotuningConfig, Map<String, dynamic>>(autotuningConfig, (value) => value.toMap()),
      'cohort': ?cohort,
      'containerImage': ?containerImage,
      'effectiveProperties': ?effectiveProperties,
      'properties': ?properties,
      'version': ?version,
    };
  }

  factory BatchRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeConfig(
      autotuningConfig: map['autotuningConfig'] == null ? null : (BatchRuntimeConfigAutotuningConfig.fromMap((map['autotuningConfig'] as Map).cast<String, dynamic>())).input(),
      cohort: map['cohort'] == null ? null : (map['cohort'] as String).input(),
      containerImage: map['containerImage'] == null ? null : (map['containerImage'] as String).input(),
      effectiveProperties: map['effectiveProperties'] == null ? null : ((map['effectiveProperties'] as Map).cast<String, String>()).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

