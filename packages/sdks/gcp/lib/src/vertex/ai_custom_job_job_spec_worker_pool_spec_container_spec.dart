// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_job_spec_worker_pool_spec_container_spec_env.dart';

class AiCustomJobJobSpecWorkerPoolSpecContainerSpec {
  /// The arguments to be passed when starting the container.
  final pulumi.Input<List<String>?>? args;
  /// The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  final pulumi.Input<List<String>?>? commands;
  /// Environment variables to be passed to the container. Maximum limit is 100.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv>?>? envs;
  /// The URI of a container image in the Container Registry that is to be run on each worker replica.
  final pulumi.Input<String> imageUri;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecContainerSpec].
  /// [args] The arguments to be passed when starting the container.
  /// [commands] The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  /// [envs] Environment variables to be passed to the container. Maximum limit is 100.
  /// [imageUri] The URI of a container image in the Container Registry that is to be run on each worker replica.
  const AiCustomJobJobSpecWorkerPoolSpecContainerSpec({
    this.args,
    this.commands,
    this.envs,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageUri': imageUri,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecContainerSpec.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecContainerSpec(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv>(guardedValue, (value) => AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
    );
  }
}
