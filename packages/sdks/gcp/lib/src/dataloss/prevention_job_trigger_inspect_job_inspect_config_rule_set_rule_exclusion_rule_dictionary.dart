// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_dictionary_cloud_storage_path.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_dictionary_word_list.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath?>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList?>? wordList;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  const PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary(
      cloudStoragePath: (() { final guardedValue = map['cloudStoragePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
