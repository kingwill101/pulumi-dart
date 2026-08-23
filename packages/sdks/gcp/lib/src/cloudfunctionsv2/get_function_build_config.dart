// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_build_config_on_deploy_update_policy.dart';
import 'get_function_build_config_source.dart';

class GetFunctionBuildConfig {
  /// Security patches are applied automatically to the runtime without requiring
  /// the function to be redeployed.
  final pulumi.Input<List<Map<String, dynamic>>> automaticUpdatePolicies;
  /// The Cloud Build name of the latest successful
  /// deployment of the function.
  final pulumi.Input<String> build;
  /// User managed repository created in Artifact Registry optionally with a customer managed encryption key.
  final pulumi.Input<String> dockerRepository;
  /// The name of the function (as defined in source code) that will be executed.
  /// Defaults to the resource name suffix, if not specified. For backward
  /// compatibility, if function with given name is not found, then the system
  /// will try to use function named "function". For Node.js this is name of a
  /// function exported by the module specified in source_location.
  final pulumi.Input<String> entryPoint;
  /// User-provided build-time environment variables for the function.
  final pulumi.Input<Map<String, String>> environmentVariables;
  /// Security patches are only applied when a function is redeployed.
  final pulumi.Input<List<GetFunctionBuildConfigOnDeployUpdatePolicy>> onDeployUpdatePolicies;
  /// The runtime in which to run the function. Required when deploying a new
  /// function, optional when updating an existing function.
  final pulumi.Input<String> runtime;
  /// The fully-qualified name of the service account to be used for building the container.
  final pulumi.Input<String> serviceAccount;
  /// The location of the function source code.
  final pulumi.Input<List<GetFunctionBuildConfigSource>> sources;
  /// Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  final pulumi.Input<String> workerPool;

  /// Creates a new [GetFunctionBuildConfig].
  /// [automaticUpdatePolicies] Security patches are applied automatically to the runtime without requiring
  /// [build] The Cloud Build name of the latest successful
  /// [dockerRepository] User managed repository created in Artifact Registry optionally with a customer managed encryption key.
  /// [entryPoint] The name of the function (as defined in source code) that will be executed.
  /// [environmentVariables] User-provided build-time environment variables for the function.
  /// [onDeployUpdatePolicies] Security patches are only applied when a function is redeployed.
  /// [runtime] The runtime in which to run the function. Required when deploying a new
  /// [serviceAccount] The fully-qualified name of the service account to be used for building the container.
  /// [sources] The location of the function source code.
  /// [workerPool] Name of the Cloud Build Custom Worker Pool that should be used to build the function.
  const GetFunctionBuildConfig({
    required this.automaticUpdatePolicies,
    required this.build,
    required this.dockerRepository,
    required this.entryPoint,
    required this.environmentVariables,
    required this.onDeployUpdatePolicies,
    required this.runtime,
    required this.serviceAccount,
    required this.sources,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdatePolicies': automaticUpdatePolicies,
      'build': build,
      'dockerRepository': dockerRepository,
      'entryPoint': entryPoint,
      'environmentVariables': environmentVariables,
      'onDeployUpdatePolicies': pulumi.Input.mapInputValue<List<GetFunctionBuildConfigOnDeployUpdatePolicy>, List<Map<String, dynamic>>>(onDeployUpdatePolicies, (value) => pulumi.Input.encodeList<GetFunctionBuildConfigOnDeployUpdatePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtime': runtime,
      'serviceAccount': serviceAccount,
      'sources': pulumi.Input.mapInputValue<List<GetFunctionBuildConfigSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetFunctionBuildConfigSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workerPool': workerPool,
    };
  }

  factory GetFunctionBuildConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionBuildConfig(
      automaticUpdatePolicies: pulumi.Input.fromValue((map['automaticUpdatePolicies'] as List).cast<Map<String, dynamic>>()),
      build: pulumi.Input.fromValue(map['build'] as String),
      dockerRepository: pulumi.Input.fromValue(map['dockerRepository'] as String),
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      environmentVariables: pulumi.Input.fromValue((map['environmentVariables'] as Map).cast<String, String>()),
      onDeployUpdatePolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFunctionBuildConfigOnDeployUpdatePolicy>(map['onDeployUpdatePolicies']!, (value) => GetFunctionBuildConfigOnDeployUpdatePolicy.fromMap((value as Map).cast<String, dynamic>()))),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFunctionBuildConfigSource>(map['sources']!, (value) => GetFunctionBuildConfigSource.fromMap((value as Map).cast<String, dynamic>()))),
      workerPool: pulumi.Input.fromValue(map['workerPool'] as String),
    );
  }
}
