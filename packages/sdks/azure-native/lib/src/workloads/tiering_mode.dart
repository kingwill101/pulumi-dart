/// Tiering Mode to control automatic tiering of recovery points. Supported values are:
/// 1. TierRecommended: Tier all recovery points recommended to be tiered
/// 2. TierAfter: Tier all recovery points after a fixed period, as specified in duration + durationType below.
/// 3. DoNotTier: Do not tier any recovery points
enum TieringMode {
  valueInvalid("Invalid"),
  valueTierRecommended("TierRecommended"),
  valueTierAfter("TierAfter"),
  valueDoNotTier("DoNotTier");

  const TieringMode(this.wireValue);
  final String wireValue;

  static TieringMode fromValue(String value) {
    for (final item in TieringMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TieringMode value: $value');
  }
}

