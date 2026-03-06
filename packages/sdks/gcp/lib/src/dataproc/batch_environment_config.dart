// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_environment_config_execution_config.dart';
import 'batch_environment_config_peripherals_config.dart';

class BatchEnvironmentConfig {
  /// Execution configuration for a workload.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfigExecutionConfig>? executionConfig;
  /// Peripherals configuration that workload has access to.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfigPeripheralsConfig>? peripheralsConfig;

  /// Creates a new [BatchEnvironmentConfig].
  /// [executionConfig] Execution configuration for a workload.
  /// [peripheralsConfig] Peripherals configuration that workload has access to.
  const BatchEnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': ?pulumi.Input.mapOptionalInputValue<BatchEnvironmentConfigExecutionConfig, Map<String, dynamic>>(executionConfig, (value) => value.toMap()),
      'peripheralsConfig': ?pulumi.Input.mapOptionalInputValue<BatchEnvironmentConfigPeripheralsConfig, Map<String, dynamic>>(peripheralsConfig, (value) => value.toMap()),
    };
  }

  factory BatchEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BatchEnvironmentConfig(
      executionConfig: (() { final guardedValue = map['executionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEnvironmentConfigExecutionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peripheralsConfig: (() { final guardedValue = map['peripheralsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEnvironmentConfigPeripheralsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

