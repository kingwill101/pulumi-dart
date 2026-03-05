/// Expedited rollout intent.
enum ExpeditedRolloutIntent {
  notSpecified("NotSpecified"),
  hotfix("Hotfix");

  const ExpeditedRolloutIntent(this.wireValue);
  final String wireValue;

  static ExpeditedRolloutIntent fromValue(String value) {
    for (final item in ExpeditedRolloutIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpeditedRolloutIntent value: $value');
  }
}

