enum SubsettingPolicyComputeBeta {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicyComputeBeta(this.wireValue);
  final String wireValue;

  static SubsettingPolicyComputeBeta fromValue(String value) {
    for (final item in SubsettingPolicyComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicyComputeBeta value: $value');
  }
}
