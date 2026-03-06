// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_build_config_on_deploy_update_policy.dart';
import 'function_build_config_source.dart';

class FunctionBuildConfig {
  /// Security patches are applied automatically to the runtime without requiring
  /// the function to be redeployed.
  final pulumi.Input<Map<String, dynamic>>? automaticUpdatePolicy;
  /// (Output)
  /// The Cloud Build name of the latest successful
  /// deployment of the function.
  final pulumi.Input<String>? build;
  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key.
  final pulumi.Input<String>? dockerRepository;
  /// The name of the function (as defined in source code) that will be executed.
  /// Defaults to the resource name suffix, if not specified. For backward
  /// compatibility, if function with given name is not found, then the system
  /// will try to use function named "function". For Node.js this is name of a
  /// function exported by the module specified in source_location.
  final pulumi.Input<String>? entryPoint;
  /// User-provided build-time environment variables for the function.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Security patches are only applied when a function is redeployed.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfigOnDeployUpdatePolicy>? onDeployUpdatePolicy;
  /// The runtime in which to run the function. Required when deploying a new
  /// function, optional when updating an existing function.
  final pulumi.Input<String>? runtime;
  /// The fully-qualified name of the service account to be used for building the container.
  final pulumi.Input<String>? serviceAccount;
  /// The location of the function source code.
  /// Structure is documented below.
  final pulumi.Input<FunctionBuildConfigSource>? source;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  final pulumi.Input<String>? workerPool;

  /// Creates a new [FunctionBuildConfig].
  /// [automaticUpdatePolicy] Security patches are applied automatically to the runtime without requiring
  /// [build] (Output)
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [onDeployUpdatePolicy] Security patches are only applied when a function is redeployed.
  /// [runtime] The runtime in which to run the function. Required when deploying a new
  /// [serviceAccount] The fully-qualified name of the service account to be used for building the container.
  /// [source] The location of the function source code.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  const FunctionBuildConfig({
    this.automaticUpdatePolicy,
    this.build,
    this.dockerRepository,
    this.entryPoint,
    this.environmentVariables,
    this.onDeployUpdatePolicy,
    this.runtime,
    this.serviceAccount,
    this.source,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdatePolicy': ?automaticUpdatePolicy,
      'build': ?build,
      'dockerRepository': ?dockerRepository,
      'entryPoint': ?entryPoint,
      'environmentVariables': ?environmentVariables,
      'onDeployUpdatePolicy': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfigOnDeployUpdatePolicy, Map<String, dynamic>>(onDeployUpdatePolicy, (value) => value.toMap()),
      'runtime': ?runtime,
      'serviceAccount': ?serviceAccount,
      'source': ?pulumi.Input.mapOptionalInputValue<FunctionBuildConfigSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'workerPool': ?workerPool,
    };
  }

  factory FunctionBuildConfig.fromMap(Map<String, dynamic> map) {
    return FunctionBuildConfig(
      automaticUpdatePolicy: (() { final guardedValue = map['automaticUpdatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerRepository: (() { final guardedValue = map['dockerRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryPoint: (() { final guardedValue = map['entryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      onDeployUpdatePolicy: (() { final guardedValue = map['onDeployUpdatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionBuildConfigOnDeployUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionBuildConfigSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

