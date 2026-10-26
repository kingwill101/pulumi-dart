// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_dictionary_word_list.dart';

class PreventionContentPolicyInspectConfigCustomInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePath?>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList?>? wordList;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  const PreventionContentPolicyInspectConfigCustomInfoTypeDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeDictionary(
      cloudStoragePath: (() { final guardedValue = map['cloudStoragePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDictionaryWordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
