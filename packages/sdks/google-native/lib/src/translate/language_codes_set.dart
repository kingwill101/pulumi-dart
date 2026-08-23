// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used with equivalent term set glossaries.
class LanguageCodesSet {
  /// The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final pulumi.Input<List<String>>? languageCodes;

  /// Creates a new [LanguageCodesSet].
  /// [languageCodes] The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  const LanguageCodesSet({
    this.languageCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCodes': ?languageCodes,
    };
  }

  factory LanguageCodesSet.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSet(
      languageCodes: (() { final guardedValue = map['languageCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
