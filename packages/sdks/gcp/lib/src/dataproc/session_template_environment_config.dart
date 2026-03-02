// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_template_environment_config_execution_config.dart';
import 'session_template_environment_config_peripherals_config.dart';

class SessionTemplateEnvironmentConfig {
  /// Execution configuration for a workload.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateEnvironmentConfigExecutionConfig>? executionConfig;
  /// Peripherals configuration that workload has access to.
  /// Structure is documented below.
  final pulumi.Input<SessionTemplateEnvironmentConfigPeripheralsConfig>? peripheralsConfig;

  /// Creates a new [SessionTemplateEnvironmentConfig].
  /// [executionConfig] Execution configuration for a workload.
  /// [peripheralsConfig] Peripherals configuration that workload has access to.
  SessionTemplateEnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': ?pulumi.Input.mapOptionalInputValue<SessionTemplateEnvironmentConfigExecutionConfig, Map<String, dynamic>>(executionConfig, (value) => value.toMap()),
      'peripheralsConfig': ?pulumi.Input.mapOptionalInputValue<SessionTemplateEnvironmentConfigPeripheralsConfig, Map<String, dynamic>>(peripheralsConfig, (value) => value.toMap()),
    };
  }

  factory SessionTemplateEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfig(
      executionConfig: map['executionConfig'] == null ? null : (SessionTemplateEnvironmentConfigExecutionConfig.fromMap((map['executionConfig']! as Map).cast<String, dynamic>())).input(),
      peripheralsConfig: map['peripheralsConfig'] == null ? null : (SessionTemplateEnvironmentConfigPeripheralsConfig.fromMap((map['peripheralsConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

