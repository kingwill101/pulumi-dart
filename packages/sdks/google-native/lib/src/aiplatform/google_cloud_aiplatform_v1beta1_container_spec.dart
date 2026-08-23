// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_env_var.dart';

/// The spec of a Container.
class GoogleCloudAiplatformV1beta1ContainerSpec {
  /// The arguments to be passed when starting the container.
  final pulumi.Input<List<String>>? args;
  /// The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  final pulumi.Input<List<String>>? command;
  /// Environment variables to be passed to the container. Maximum limit is 100.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1EnvVar>>? env;
  /// The URI of a container image in the Container Registry that is to be run on each worker replica.
  final pulumi.Input<String> imageUri;

  /// Creates a new [GoogleCloudAiplatformV1beta1ContainerSpec].
  /// [args] The arguments to be passed when starting the container.
  /// [command] The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  /// [env] Environment variables to be passed to the container. Maximum limit is 100.
  /// [imageUri] The URI of a container image in the Container Registry that is to be run on each worker replica.
  const GoogleCloudAiplatformV1beta1ContainerSpec({
    this.args,
    this.command,
    this.env,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudAiplatformV1beta1EnvVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1EnvVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageUri': imageUri,
    };
  }

  factory GoogleCloudAiplatformV1beta1ContainerSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ContainerSpec(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1EnvVar>(guardedValue, (value) => GoogleCloudAiplatformV1beta1EnvVar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
    );
  }
}
