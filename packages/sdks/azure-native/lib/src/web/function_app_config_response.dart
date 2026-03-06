// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment_response.dart';
import 'functions_runtime_response.dart';
import 'functions_scale_and_concurrency_response.dart';

/// Function app configuration.
class FunctionAppConfigResponse {
  /// Function app deployment configuration.
  final pulumi.Input<FunctionsDeploymentResponse>? deployment;
  /// Function app runtime settings.
  final pulumi.Input<FunctionsRuntimeResponse>? runtime;
  /// Function app scale and concurrency settings.
  final pulumi.Input<FunctionsScaleAndConcurrencyResponse>? scaleAndConcurrency;

  /// Creates a new [FunctionAppConfigResponse].
  /// [deployment] Function app deployment configuration.
  /// [runtime] Function app runtime settings.
  /// [scaleAndConcurrency] Function app scale and concurrency settings.
  const FunctionAppConfigResponse({
    this.deployment,
    this.runtime,
    this.scaleAndConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': ?pulumi.Input.mapOptionalInputValue<FunctionsDeploymentResponse, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'runtime': ?pulumi.Input.mapOptionalInputValue<FunctionsRuntimeResponse, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'scaleAndConcurrency': ?pulumi.Input.mapOptionalInputValue<FunctionsScaleAndConcurrencyResponse, Map<String, dynamic>>(scaleAndConcurrency, (value) => value.toMap()),
    };
  }

  factory FunctionAppConfigResponse.fromMap(Map<String, dynamic> map) {
    return FunctionAppConfigResponse(
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsDeploymentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsRuntimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleAndConcurrency: (() { final guardedValue = map['scaleAndConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionsScaleAndConcurrencyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

