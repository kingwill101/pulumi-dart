/// The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -&gt; COMPLETE A PRECONDITION_FAILED will be returned if an invalid transition is requested. It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times. - In response: always set - In create/update request: optional
enum StepState {
  unknownState("unknownState"),
  pending("pending"),
  inProgress("inProgress"),
  complete("complete");

  const StepState(this.wireValue);
  final String wireValue;

  static StepState fromValue(String value) {
    for (final item in StepState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StepState value: $value');
  }
}

