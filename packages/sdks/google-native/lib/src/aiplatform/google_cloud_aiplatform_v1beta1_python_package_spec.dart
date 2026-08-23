// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_env_var.dart';

/// The spec of a Python packaged code.
class GoogleCloudAiplatformV1beta1PythonPackageSpec {
  /// Command line arguments to be passed to the Python task.
  final pulumi.Input<List<String>>? args;
  /// Environment variables to be passed to the python module. Maximum limit is 100.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1EnvVar>>? env;
  /// The URI of a container image in Artifact Registry that will run the provided Python package. Vertex AI provides a wide range of executor images with pre-installed packages to meet users' various use cases. See the list of [pre-built containers for training](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers). You must use an image from this list.
  final pulumi.Input<String> executorImageUri;
  /// The Google Cloud Storage location of the Python package files which are the training program and its dependent packages. The maximum number of package URIs is 100.
  final pulumi.Input<List<String>> packageUris;
  /// The Python module name to run after installing the packages.
  final pulumi.Input<String> pythonModule;

  /// Creates a new [GoogleCloudAiplatformV1beta1PythonPackageSpec].
  /// [args] Command line arguments to be passed to the Python task.
  /// [env] Environment variables to be passed to the python module. Maximum limit is 100.
  /// [executorImageUri] The URI of a container image in Artifact Registry that will run the provided Python package. Vertex AI provides a wide range of executor images with pre-installed packages to meet users' various use cases. See the list of [pre-built containers for training](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers). You must use an image from this list.
  /// [packageUris] The Google Cloud Storage location of the Python package files which are the training program and its dependent packages. The maximum number of package URIs is 100.
  /// [pythonModule] The Python module name to run after installing the packages.
  const GoogleCloudAiplatformV1beta1PythonPackageSpec({
    this.args,
    this.env,
    required this.executorImageUri,
    required this.packageUris,
    required this.pythonModule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'env': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudAiplatformV1beta1EnvVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1EnvVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executorImageUri': executorImageUri,
      'packageUris': packageUris,
      'pythonModule': pythonModule,
    };
  }

  factory GoogleCloudAiplatformV1beta1PythonPackageSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PythonPackageSpec(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1EnvVar>(guardedValue, (value) => GoogleCloudAiplatformV1beta1EnvVar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executorImageUri: pulumi.Input.fromValue(map['executorImageUri'] as String),
      packageUris: pulumi.Input.fromValue((map['packageUris'] as List).cast<String>()),
      pythonModule: pulumi.Input.fromValue(map['pythonModule'] as String),
    );
  }
}
