// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_config.dart';
import 'peripherals_config.dart';

/// Environment configuration for a workload.
class EnvironmentConfig {
  /// Optional. Execution configuration for a workload.
  final pulumi.Input<ExecutionConfig>? executionConfig;
  /// Optional. Peripherals configuration that workload has access to.
  final pulumi.Input<PeripheralsConfig>? peripheralsConfig;

  /// Creates a new [EnvironmentConfig].
  /// [executionConfig] Optional. Execution configuration for a workload.
  /// [peripheralsConfig] Optional. Peripherals configuration that workload has access to.
  const EnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': ?pulumi.Input.mapOptionalInputValue<ExecutionConfig, Map<String, dynamic>>(executionConfig, (value) => value.toMap()),
      'peripheralsConfig': ?pulumi.Input.mapOptionalInputValue<PeripheralsConfig, Map<String, dynamic>>(peripheralsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfig(
      executionConfig: (() { final guardedValue = map['executionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peripheralsConfig: (() { final guardedValue = map['peripheralsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PeripheralsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
