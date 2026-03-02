// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_stored_info_type_dictionary_word_list.dart';

class PreventionStoredInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeDictionaryCloudStoragePath>? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeDictionaryWordList>? wordList;

  /// Creates a new [PreventionStoredInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionStoredInfoTypeDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeDictionaryCloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeDictionaryWordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory PreventionStoredInfoTypeDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null ? null : (PreventionStoredInfoTypeDictionaryCloudStoragePath.fromMap((map['cloudStoragePath'] as Map).cast<String, dynamic>())).input(),
      wordList: map['wordList'] == null ? null : (PreventionStoredInfoTypeDictionaryWordList.fromMap((map['wordList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

