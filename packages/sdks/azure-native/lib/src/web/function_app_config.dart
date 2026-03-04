// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'functions_deployment.dart';
import 'functions_runtime.dart';
import 'functions_scale_and_concurrency.dart';

/// Function app configuration.
class FunctionAppConfig {
  /// Function app deployment configuration.
  final pulumi.Input<FunctionsDeployment>? deployment;

  /// Function app runtime settings.
  final pulumi.Input<FunctionsRuntime>? runtime;

  /// Function app scale and concurrency settings.
  final pulumi.Input<FunctionsScaleAndConcurrency>? scaleAndConcurrency;

  /// Creates a new [FunctionAppConfig].
  /// [deployment] Function app deployment configuration.
  /// [runtime] Function app runtime settings.
  /// [scaleAndConcurrency] Function app scale and concurrency settings.
  FunctionAppConfig({this.deployment, this.runtime, this.scaleAndConcurrency});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionsDeployment,
            Map<String, dynamic>
          >(deployment, (value) => value.toMap()),
      'runtime':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionsRuntime,
            Map<String, dynamic>
          >(runtime, (value) => value.toMap()),
      'scaleAndConcurrency':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionsScaleAndConcurrency,
            Map<String, dynamic>
          >(scaleAndConcurrency, (value) => value.toMap()),
    };
  }

  factory FunctionAppConfig.fromMap(Map<String, dynamic> map) {
    return FunctionAppConfig(
      deployment: (() {
        final guardedValue = map['deployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionsDeployment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      runtime: (() {
        final guardedValue = map['runtime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionsRuntime.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scaleAndConcurrency: (() {
        final guardedValue = map['scaleAndConcurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionsScaleAndConcurrency.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
