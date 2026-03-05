// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_chars_to_ignore_common_characters_to_ignore.dart';

/// Characters to skip when doing deidentification of a value. These will be left alone and skipped.
class GooglePrivacyDlpV2CharsToIgnore {
  /// Characters to not transform when masking.
  final pulumi.Input<String>? charactersToSkip;
  /// Common characters to not transform when masking. Useful to avoid removing punctuation.
  final pulumi.Input<GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore>? commonCharactersToIgnore;

  /// Creates a new [GooglePrivacyDlpV2CharsToIgnore].
  /// [charactersToSkip] Characters to not transform when masking.
  /// [commonCharactersToIgnore] Common characters to not transform when masking. Useful to avoid removing punctuation.
  GooglePrivacyDlpV2CharsToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charactersToSkip': ?charactersToSkip,
      'commonCharactersToIgnore': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore, String>(commonCharactersToIgnore, (value) => value.wireValue),
    };
  }

  factory GooglePrivacyDlpV2CharsToIgnore.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CharsToIgnore(
      charactersToSkip: (() { final guardedValue = map['charactersToSkip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonCharactersToIgnore: (() { final guardedValue = map['commonCharactersToIgnore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore.fromValue(guardedValue as String)); })(),
    );
  }
}

