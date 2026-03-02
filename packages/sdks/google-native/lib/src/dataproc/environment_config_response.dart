// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_config_response.dart';
import 'peripherals_config_response.dart';

/// Environment configuration for a workload.
class EnvironmentConfigResponse {
  /// Optional. Execution configuration for a workload.
  final pulumi.Input<ExecutionConfigResponse> executionConfig;
  /// Optional. Peripherals configuration that workload has access to.
  final pulumi.Input<PeripheralsConfigResponse> peripheralsConfig;

  /// Creates a new [EnvironmentConfigResponse].
  /// [executionConfig] Optional. Execution configuration for a workload.
  /// [peripheralsConfig] Optional. Peripherals configuration that workload has access to.
  EnvironmentConfigResponse({
    required this.executionConfig,
    required this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionConfig': pulumi.Input.mapInputValue<ExecutionConfigResponse, Map<String, dynamic>>(executionConfig, (value) => value.toMap()),
      'peripheralsConfig': pulumi.Input.mapInputValue<PeripheralsConfigResponse, Map<String, dynamic>>(peripheralsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigResponse(
      executionConfig: (ExecutionConfigResponse.fromMap((map['executionConfig'] as Map).cast<String, dynamic>())).input(),
      peripheralsConfig: (PeripheralsConfigResponse.fromMap((map['peripheralsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

