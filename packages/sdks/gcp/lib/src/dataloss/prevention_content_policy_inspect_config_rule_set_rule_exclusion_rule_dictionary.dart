// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_dictionary_cloud_storage_path.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_dictionary_word_list.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath?>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList?>? wordList;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary(
      cloudStoragePath: (() { final guardedValue = map['cloudStoragePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
