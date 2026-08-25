// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecContainerSpec {
  /// The Artifact Registry Docker image URI (e.g.,
  /// `us-central1-docker.pkg.dev/my-project/my-repo/my-image:tag`) of the
  /// container image that is to be run on each worker replica.
  final pulumi.Input<String> imageUri;
  /// Optional. The port that the container listens on for incoming requests. If not specified, defaults to 8080.
  final pulumi.Input<int?>? port;

  /// Creates a new [AiReasoningEngineSpecContainerSpec].
  /// [imageUri] The Artifact Registry Docker image URI (e.g.,
  /// [port] Optional. The port that the container listens on for incoming requests. If not specified, defaults to 8080.
  const AiReasoningEngineSpecContainerSpec({
    required this.imageUri,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUri': imageUri,
      'port': ?port,
    };
  }

  factory AiReasoningEngineSpecContainerSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecContainerSpec(
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
