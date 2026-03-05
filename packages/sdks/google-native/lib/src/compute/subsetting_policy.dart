enum SubsettingPolicy {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicy(this.wireValue);
  final String wireValue;

  static SubsettingPolicy fromValue(String value) {
    for (final item in SubsettingPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicy value: $value');
  }
}

