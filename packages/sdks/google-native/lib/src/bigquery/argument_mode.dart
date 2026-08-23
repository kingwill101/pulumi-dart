/// Optional. Specifies whether the argument is input or output. Can be set for procedures only.
enum ArgumentMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  in_("IN"),
  out("OUT"),
  inout("INOUT");

  const ArgumentMode(this.wireValue);
  final String wireValue;

  static ArgumentMode fromValue(String value) {
    for (final item in ArgumentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArgumentMode value: $value');
  }
}
