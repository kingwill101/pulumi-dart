// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_dictionary_word_list.dart';

class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList>? wordList;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null ? null : (PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap((map['cloudStoragePath'] as Map).cast<String, dynamic>())).input(),
      wordList: map['wordList'] == null ? null : (PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList.fromMap((map['wordList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

