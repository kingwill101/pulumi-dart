// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used with equivalent term set glossaries.
class LanguageCodesSetTranslateV3beta1 {
  /// The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final pulumi.Input<List<String>>? languageCodes;

  /// Creates a new [LanguageCodesSetTranslateV3beta1].
  /// [languageCodes] The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodesSetTranslateV3beta1({
    this.languageCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCodes': ?languageCodes,
    };
  }

  factory LanguageCodesSetTranslateV3beta1.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSetTranslateV3beta1(
      languageCodes: map['languageCodes'] == null ? null : ((map['languageCodes']! as List).cast<String>()).input(),
    );
  }
}

