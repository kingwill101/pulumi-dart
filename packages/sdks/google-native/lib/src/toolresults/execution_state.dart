/// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
enum ExecutionState {
  unknownState("unknownState"),
  pending("pending"),
  inProgress("inProgress"),
  complete("complete");

  const ExecutionState(this.wireValue);
  final String wireValue;

  static ExecutionState fromValue(String value) {
    for (final item in ExecutionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionState value: $value');
  }
}

