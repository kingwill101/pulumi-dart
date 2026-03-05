/// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
enum ExperimentStateDialogflowV3beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  running("RUNNING"),
  done("DONE"),
  rolloutFailed("ROLLOUT_FAILED");

  const ExperimentStateDialogflowV3beta1(this.wireValue);
  final String wireValue;

  static ExperimentStateDialogflowV3beta1 fromValue(String value) {
    for (final item in ExperimentStateDialogflowV3beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExperimentStateDialogflowV3beta1 value: $value');
  }
}

