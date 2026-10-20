import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of this Artifact. This is a property of the Artifact, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines), and the system does not prescribe or check the validity of state transitions.
enum ArtifactStateAiplatformV1beta1 implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  live("LIVE");

  const ArtifactStateAiplatformV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ArtifactStateAiplatformV1beta1 fromValue(String value) {
    for (final item in ArtifactStateAiplatformV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactStateAiplatformV1beta1 value: $value');
  }
}
