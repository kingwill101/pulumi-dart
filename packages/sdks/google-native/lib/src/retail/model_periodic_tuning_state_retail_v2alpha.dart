/// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
enum ModelPeriodicTuningStateRetailV2alpha {
  periodicTuningStateUnspecified("PERIODIC_TUNING_STATE_UNSPECIFIED"),
  periodicTuningDisabled("PERIODIC_TUNING_DISABLED"),
  allTuningDisabled("ALL_TUNING_DISABLED"),
  periodicTuningEnabled("PERIODIC_TUNING_ENABLED");

  const ModelPeriodicTuningStateRetailV2alpha(this.wireValue);
  final String wireValue;

  static ModelPeriodicTuningStateRetailV2alpha fromValue(String value) {
    for (final item in ModelPeriodicTuningStateRetailV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ModelPeriodicTuningStateRetailV2alpha value: $value',
    );
  }
}
