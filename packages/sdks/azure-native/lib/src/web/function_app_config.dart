// ignore_for_file: unused_element, unnecessary_cast

import 'functions_deployment.dart';
import 'functions_runtime.dart';
import 'functions_scale_and_concurrency.dart';

/// Function app configuration.
class FunctionAppConfig {
  /// Function app deployment configuration.
  final FunctionsDeployment? deployment;
  /// Function app runtime settings.
  final FunctionsRuntime? runtime;
  /// Function app scale and concurrency settings.
  final FunctionsScaleAndConcurrency? scaleAndConcurrency;

  /// Creates a new [FunctionAppConfig].
  /// [deployment] Function app deployment configuration.
  /// [runtime] Function app runtime settings.
  /// [scaleAndConcurrency] Function app scale and concurrency settings.
  FunctionAppConfig({
    this.deployment,
    this.runtime,
    this.scaleAndConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': ?deployment == null ? null : deployment!.toMap(),
      'runtime': ?runtime == null ? null : runtime!.toMap(),
      'scaleAndConcurrency': ?scaleAndConcurrency == null ? null : scaleAndConcurrency!.toMap(),
    };
  }

  factory FunctionAppConfig.fromMap(Map<String, dynamic> map) {
    return FunctionAppConfig(
      deployment: map['deployment'] == null ? null : FunctionsDeployment.fromMap((map['deployment'] as Map).cast<String, dynamic>()),
      runtime: map['runtime'] == null ? null : FunctionsRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>()),
      scaleAndConcurrency: map['scaleAndConcurrency'] == null ? null : FunctionsScaleAndConcurrency.fromMap((map['scaleAndConcurrency'] as Map).cast<String, dynamic>()),
    );
  }
}

