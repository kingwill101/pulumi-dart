/// The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
enum ExecutionStateAiplatformV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  new_("NEW"),
  running("RUNNING"),
  complete("COMPLETE"),
  failed("FAILED"),
  cached("CACHED"),
  cancelled("CANCELLED");

  const ExecutionStateAiplatformV1beta1(this.wireValue);
  final String wireValue;

  static ExecutionStateAiplatformV1beta1 fromValue(String value) {
    for (final item in ExecutionStateAiplatformV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionStateAiplatformV1beta1 value: $value');
  }
}
