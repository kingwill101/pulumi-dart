// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_env_var_response.dart';

/// The spec of a Container.
class GoogleCloudAiplatformV1ContainerSpecResponse {
  /// The arguments to be passed when starting the container.
  final pulumi.Input<List<String>> args;

  /// The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  final pulumi.Input<List<String>> command;

  /// Environment variables to be passed to the container. Maximum limit is 100.
  final pulumi.Input<List<GoogleCloudAiplatformV1EnvVarResponse>> env;

  /// The URI of a container image in the Container Registry that is to be run on each worker replica.
  final pulumi.Input<String> imageUri;

  /// Creates a new [GoogleCloudAiplatformV1ContainerSpecResponse].
  /// [args] The arguments to be passed when starting the container.
  /// [command] The command to be invoked when the container is started. It overrides the entrypoint instruction in Dockerfile when provided.
  /// [env] Environment variables to be passed to the container. Maximum limit is 100.
  /// [imageUri] The URI of a container image in the Container Registry that is to be run on each worker replica.
  GoogleCloudAiplatformV1ContainerSpecResponse({
    required this.args,
    required this.command,
    required this.env,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'command': command,
      'env':
          pulumi.Input.mapInputValue<
            List<GoogleCloudAiplatformV1EnvVarResponse>,
            List<Map<String, dynamic>>
          >(
            env,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudAiplatformV1EnvVarResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageUri': imageUri,
    };
  }

  factory GoogleCloudAiplatformV1ContainerSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ContainerSpecResponse(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      command: pulumi.Input.fromValue((map['command'] as List).cast<String>()),
      env: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudAiplatformV1EnvVarResponse>(
          map['env']!,
          (value) => GoogleCloudAiplatformV1EnvVarResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
    );
  }
}
