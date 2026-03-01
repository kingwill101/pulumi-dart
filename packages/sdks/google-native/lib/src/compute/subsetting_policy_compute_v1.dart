enum SubsettingPolicyComputeV1 {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicyComputeV1(this.value);
  final String value;

  static SubsettingPolicyComputeV1 fromValue(String value) {
    for (final item in SubsettingPolicyComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicyComputeV1 value: $value');
  }
}

