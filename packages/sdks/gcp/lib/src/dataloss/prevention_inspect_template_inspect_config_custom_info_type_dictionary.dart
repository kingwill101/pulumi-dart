// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_custom_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_inspect_template_inspect_config_custom_info_type_dictionary_word_list.dart';

class PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList>? wordList;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null ? null : (PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap((map['cloudStoragePath'] as Map).cast<String, dynamic>())).input(),
      wordList: map['wordList'] == null ? null : (PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList.fromMap((map['wordList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

