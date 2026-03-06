// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents output related to a built-in algorithm Job.
class GoogleCloudMlV1BuiltInAlgorithmOutput {
  /// Framework on which the built-in algorithm was trained.
  final pulumi.Input<String>? framework;
  /// The Cloud Storage path to the `model/` directory where the training job saves the trained model. Only set for successful jobs that don't use hyperparameter tuning.
  final pulumi.Input<String>? modelPath;
  /// Python version on which the built-in algorithm was trained.
  final pulumi.Input<String>? pythonVersion;
  /// AI Platform runtime version on which the built-in algorithm was trained.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [GoogleCloudMlV1BuiltInAlgorithmOutput].
  /// [framework] Framework on which the built-in algorithm was trained.
  /// [modelPath] The Cloud Storage path to the `model/` directory where the training job saves the trained model. Only set for successful jobs that don't use hyperparameter tuning.
  /// [pythonVersion] Python version on which the built-in algorithm was trained.
  /// [runtimeVersion] AI Platform runtime version on which the built-in algorithm was trained.
  const GoogleCloudMlV1BuiltInAlgorithmOutput({
    this.framework,
    this.modelPath,
    this.pythonVersion,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'framework': ?framework,
      'modelPath': ?modelPath,
      'pythonVersion': ?pythonVersion,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GoogleCloudMlV1BuiltInAlgorithmOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1BuiltInAlgorithmOutput(
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelPath: (() { final guardedValue = map['modelPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonVersion: (() { final guardedValue = map['pythonVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

