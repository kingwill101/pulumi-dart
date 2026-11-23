// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at
  /// least one phrase and every phrase must contain at least two characters that
  /// are letters or digits.
  final pulumi.Input<List<String>> words;

  /// Creates a new [TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at
  const TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList(
      words: pulumi.Input.fromValue((map['words'] as List).cast<String>()),
    );
  }
}
