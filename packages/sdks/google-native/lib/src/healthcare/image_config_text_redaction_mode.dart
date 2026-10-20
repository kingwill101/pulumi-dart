import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how to redact text from image.
enum ImageConfigTextRedactionMode implements pulumi.PulumiEnum<String> {
  textRedactionModeUnspecified("TEXT_REDACTION_MODE_UNSPECIFIED"),
  redactAllText("REDACT_ALL_TEXT"),
  redactSensitiveText("REDACT_SENSITIVE_TEXT"),
  redactNoText("REDACT_NO_TEXT");

  const ImageConfigTextRedactionMode(this.wireValue);
  @override
  final String wireValue;

  static ImageConfigTextRedactionMode fromValue(String value) {
    for (final item in ImageConfigTextRedactionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageConfigTextRedactionMode value: $value');
  }
}
