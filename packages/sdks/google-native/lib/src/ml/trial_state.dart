import 'package:pulumi/pulumi.dart' as pulumi;

/// The detailed state of a trial.
enum TrialState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  requested("REQUESTED"),
  active("ACTIVE"),
  completed("COMPLETED"),
  stopping("STOPPING");

  const TrialState(this.wireValue);
  @override
  final String wireValue;

  static TrialState fromValue(String value) {
    for (final item in TrialState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrialState value: $value');
  }
}
