// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_job_spec_worker_pool_spec_python_package_spec_env.dart';

class AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec {
  /// Command line arguments to be passed to the Python task.
  final pulumi.Input<List<String>?>? args;
  /// Environment variables to be passed to the python module. Maximum limit is 100.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv>?>? envs;
  /// The URI of a container image in Artifact Registry that will run the provided Python package.
  final pulumi.Input<String> executorImageUri;
  /// The Google Cloud Storage location of the Python package files which are the training program and its dependent packages.
  final pulumi.Input<List<String>> packageUris;
  /// The Python module name to run after installing the packages.
  final pulumi.Input<String> pythonModule;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec].
  /// [args] Command line arguments to be passed to the Python task.
  /// [envs] Environment variables to be passed to the python module. Maximum limit is 100.
  /// [executorImageUri] The URI of a container image in Artifact Registry that will run the provided Python package.
  /// [packageUris] The Google Cloud Storage location of the Python package files which are the training program and its dependent packages.
  /// [pythonModule] The Python module name to run after installing the packages.
  const AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec({
    this.args,
    this.envs,
    required this.executorImageUri,
    required this.packageUris,
    required this.pythonModule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executorImageUri': executorImageUri,
      'packageUris': packageUris,
      'pythonModule': pythonModule,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpec(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv>(guardedValue, (value) => AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executorImageUri: pulumi.Input.fromValue(map['executorImageUri'] as String),
      packageUris: pulumi.Input.fromValue((map['packageUris'] as List).cast<String>()),
      pythonModule: pulumi.Input.fromValue(map['pythonModule'] as String),
    );
  }
}
