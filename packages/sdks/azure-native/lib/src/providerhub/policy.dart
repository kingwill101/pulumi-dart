/// The policy.
enum Policy {
  notSpecified("NotSpecified"),
  synchronizeBeginExtension("SynchronizeBeginExtension");

  const Policy(this.value);
  final String value;

  static Policy fromValue(String value) {
    for (final item in Policy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Policy value: $value');
  }
}

