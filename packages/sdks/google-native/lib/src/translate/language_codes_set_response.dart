// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used with equivalent term set glossaries.
class LanguageCodesSetResponse {
  /// The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final pulumi.Input<List<String>> languageCodes;

  /// Creates a new [LanguageCodesSetResponse].
  /// [languageCodes] The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodesSetResponse({required this.languageCodes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'languageCodes': languageCodes};
  }

  factory LanguageCodesSetResponse.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSetResponse(
      languageCodes: pulumi.Input.fromValue(
        (map['languageCodes'] as List).cast<String>(),
      ),
    );
  }
}
