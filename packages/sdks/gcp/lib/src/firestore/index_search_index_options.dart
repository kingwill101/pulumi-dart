// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexSearchIndexOptions {
  /// Optional. The language code used to parse all text fields included in the search index,
  /// for example, "en", "es", "jp".
  final pulumi.Input<String?>? textLanguage;
  /// Optional. The path to the field that records the text language override of each document.
  final pulumi.Input<String?>? textLanguageOverrideFieldPath;

  /// Creates a new [IndexSearchIndexOptions].
  /// [textLanguage] Optional. The language code used to parse all text fields included in the search index,
  /// [textLanguageOverrideFieldPath] Optional. The path to the field that records the text language override of each document.
  const IndexSearchIndexOptions({
    this.textLanguage,
    this.textLanguageOverrideFieldPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textLanguage': ?textLanguage,
      'textLanguageOverrideFieldPath': ?textLanguageOverrideFieldPath,
    };
  }

  factory IndexSearchIndexOptions.fromMap(Map<String, dynamic> map) {
    return IndexSearchIndexOptions(
      textLanguage: (() { final guardedValue = map['textLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textLanguageOverrideFieldPath: (() { final guardedValue = map['textLanguageOverrideFieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
