import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or set the job state.
enum JobState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueFaulted("Faulted"),
  valueCompleted("Completed");

  const JobState(this.wireValue);
  @override
  final String wireValue;

  static JobState fromValue(String value) {
    for (final item in JobState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobState value: $value');
  }
}
