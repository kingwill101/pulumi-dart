/// The taint effect.
enum NodeTaintEffect {
  effectUnspecified("EFFECT_UNSPECIFIED"),
  noSchedule("NO_SCHEDULE"),
  preferNoSchedule("PREFER_NO_SCHEDULE"),
  noExecute("NO_EXECUTE");

  const NodeTaintEffect(this.wireValue);
  final String wireValue;

  static NodeTaintEffect fromValue(String value) {
    for (final item in NodeTaintEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTaintEffect value: $value');
  }
}

