// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage {
  /// Confidence of detected language. Range `[0, 1]`.
  final pulumi.Input<double>? confidence;
  /// The [BCP-47 language code](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier), such as `en-US` or `sr-Latn`.
  final pulumi.Input<String>? languageCode;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDetectedLanguage].
  /// [confidence] Confidence of detected language. Range `[0, 1]`.
  /// [languageCode] The [BCP-47 language code](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier), such as `en-US` or `sr-Latn`.
  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'languageCode': ?languageCode,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      confidence: map['confidence'] == null ? null : (map['confidence']! as double).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
    );
  }
}

