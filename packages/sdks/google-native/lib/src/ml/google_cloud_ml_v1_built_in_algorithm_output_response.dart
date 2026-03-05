// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents output related to a built-in algorithm Job.
class GoogleCloudMlV1BuiltInAlgorithmOutputResponse {
  /// Framework on which the built-in algorithm was trained.
  final pulumi.Input<String> framework;
  /// The Cloud Storage path to the `model/` directory where the training job saves the trained model. Only set for successful jobs that don't use hyperparameter tuning.
  final pulumi.Input<String> modelPath;
  /// Python version on which the built-in algorithm was trained.
  final pulumi.Input<String> pythonVersion;
  /// AI Platform runtime version on which the built-in algorithm was trained.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [GoogleCloudMlV1BuiltInAlgorithmOutputResponse].
  /// [framework] Framework on which the built-in algorithm was trained.
  /// [modelPath] The Cloud Storage path to the `model/` directory where the training job saves the trained model. Only set for successful jobs that don't use hyperparameter tuning.
  /// [pythonVersion] Python version on which the built-in algorithm was trained.
  /// [runtimeVersion] AI Platform runtime version on which the built-in algorithm was trained.
  GoogleCloudMlV1BuiltInAlgorithmOutputResponse({
    required this.framework,
    required this.modelPath,
    required this.pythonVersion,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'framework': framework,
      'modelPath': modelPath,
      'pythonVersion': pythonVersion,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory GoogleCloudMlV1BuiltInAlgorithmOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1BuiltInAlgorithmOutputResponse(
      framework: pulumi.Input.fromValue(map['framework'] as String),
      modelPath: pulumi.Input.fromValue(map['modelPath'] as String),
      pythonVersion: pulumi.Input.fromValue(map['pythonVersion'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}

