/// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
enum TransferOptionsOverwriteWhen {
  overwriteWhenUnspecified("OVERWRITE_WHEN_UNSPECIFIED"),
  different("DIFFERENT"),
  never_("NEVER"),
  always("ALWAYS");

  const TransferOptionsOverwriteWhen(this.wireValue);
  final String wireValue;

  static TransferOptionsOverwriteWhen fromValue(String value) {
    for (final item in TransferOptionsOverwriteWhen.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferOptionsOverwriteWhen value: $value');
  }
}
