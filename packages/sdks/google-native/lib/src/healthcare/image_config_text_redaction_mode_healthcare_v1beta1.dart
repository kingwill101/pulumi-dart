/// Determines how to redact text from image.
enum ImageConfigTextRedactionModeHealthcareV1beta1 {
  textRedactionModeUnspecified("TEXT_REDACTION_MODE_UNSPECIFIED"),
  redactAllText("REDACT_ALL_TEXT"),
  redactSensitiveText("REDACT_SENSITIVE_TEXT"),
  redactNoText("REDACT_NO_TEXT"),
  redactSensitiveTextCleanDescriptors("REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS");

  const ImageConfigTextRedactionModeHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static ImageConfigTextRedactionModeHealthcareV1beta1 fromValue(String value) {
    for (final item in ImageConfigTextRedactionModeHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageConfigTextRedactionModeHealthcareV1beta1 value: $value');
  }
}
