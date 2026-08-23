// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary_cloud_storage_path.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary_word_list.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordList>? wordList;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  const PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary(
      cloudStoragePath: (() { final guardedValue = map['cloudStoragePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
