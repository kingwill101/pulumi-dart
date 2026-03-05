/// The state of this Artifact. This is a property of the Artifact, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines), and the system does not prescribe or check the validity of state transitions.
enum ArtifactState {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  live("LIVE");

  const ArtifactState(this.wireValue);
  final String wireValue;

  static ArtifactState fromValue(String value) {
    for (final item in ArtifactState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactState value: $value');
  }
}

