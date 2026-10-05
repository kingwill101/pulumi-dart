import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how to redact text from image.
enum ImageConfigTextRedactionModeHealthcareV1beta1 implements pulumi.PulumiEnum<String> {
  textRedactionModeUnspecified("TEXT_REDACTION_MODE_UNSPECIFIED"),
  redactAllText("REDACT_ALL_TEXT"),
  redactSensitiveText("REDACT_SENSITIVE_TEXT"),
  redactNoText("REDACT_NO_TEXT"),
  redactSensitiveTextCleanDescriptors("REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS");

  const ImageConfigTextRedactionModeHealthcareV1beta1(this.wireValue);
  @override
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
