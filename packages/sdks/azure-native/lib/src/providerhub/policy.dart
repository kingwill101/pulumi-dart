/// The policy.
enum Policy {
  notSpecified("NotSpecified"),
  synchronizeBeginExtension("SynchronizeBeginExtension");

  const Policy(this.wireValue);
  final String wireValue;

  static Policy fromValue(String value) {
    for (final item in Policy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Policy value: $value');
  }
}

