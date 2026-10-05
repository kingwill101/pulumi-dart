import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
enum ModelPeriodicTuningState implements pulumi.PulumiEnum<String> {
  periodicTuningStateUnspecified("PERIODIC_TUNING_STATE_UNSPECIFIED"),
  periodicTuningDisabled("PERIODIC_TUNING_DISABLED"),
  allTuningDisabled("ALL_TUNING_DISABLED"),
  periodicTuningEnabled("PERIODIC_TUNING_ENABLED");

  const ModelPeriodicTuningState(this.wireValue);
  @override
  final String wireValue;

  static ModelPeriodicTuningState fromValue(String value) {
    for (final item in ModelPeriodicTuningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelPeriodicTuningState value: $value');
  }
}
