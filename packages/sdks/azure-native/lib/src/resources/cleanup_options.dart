/// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
enum CleanupOptions {
  valueAlways("Always"),
  valueOnSuccess("OnSuccess"),
  valueOnExpiration("OnExpiration");

  const CleanupOptions(this.value);
  final String value;

  static CleanupOptions fromValue(String value) {
    for (final item in CleanupOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CleanupOptions value: $value');
  }
}

