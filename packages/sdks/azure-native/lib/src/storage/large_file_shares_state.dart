/// Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
enum LargeFileSharesState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const LargeFileSharesState(this.wireValue);
  final String wireValue;

  static LargeFileSharesState fromValue(String value) {
    for (final item in LargeFileSharesState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LargeFileSharesState value: $value');
  }
}
