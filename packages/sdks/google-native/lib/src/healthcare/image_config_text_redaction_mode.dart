/// Determines how to redact text from image.
enum ImageConfigTextRedactionMode {
  textRedactionModeUnspecified("TEXT_REDACTION_MODE_UNSPECIFIED"),
  redactAllText("REDACT_ALL_TEXT"),
  redactSensitiveText("REDACT_SENSITIVE_TEXT"),
  redactNoText("REDACT_NO_TEXT");

  const ImageConfigTextRedactionMode(this.value);
  final String value;

  static ImageConfigTextRedactionMode fromValue(String value) {
    for (final item in ImageConfigTextRedactionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageConfigTextRedactionMode value: $value');
  }
}

