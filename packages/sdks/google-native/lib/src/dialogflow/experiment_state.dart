import 'package:pulumi/pulumi.dart' as pulumi;

/// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
enum ExperimentState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  running("RUNNING"),
  done("DONE"),
  rolloutFailed("ROLLOUT_FAILED");

  const ExperimentState(this.wireValue);
  @override
  final String wireValue;

  static ExperimentState fromValue(String value) {
    for (final item in ExperimentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExperimentState value: $value');
  }
}
