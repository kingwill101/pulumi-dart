enum Logging {
  valueStdout("stdout"),
  valueStderr("stderr"),
  valueStdoutAndStderr("stdoutAndStderr"),
  valueNone("none");

  const Logging(this.wireValue);
  final String wireValue;

  static Logging fromValue(String value) {
    for (final item in Logging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Logging value: $value');
  }
}
