// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_filter_rule_settings_rule_set_rule_exclusion_rule_dictionary_word_list.dart';

class TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary {
  /// Message defining a list of words or phrases.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList?>? wordList;

  /// Creates a new [TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary].
  /// [wordList] Message defining a list of words or phrases.
  const TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary({
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wordList': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary(
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionaryWordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
