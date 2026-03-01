// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_stored_info_type_large_custom_dictionary_big_query_field.dart';
import 'prevention_stored_info_type_large_custom_dictionary_cloud_storage_file_set.dart';
import 'prevention_stored_info_type_large_custom_dictionary_output_path.dart';

class PreventionStoredInfoTypeLargeCustomDictionary {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField? bigQueryField;
  /// Set of files containing newline-delimited lists of dictionary phrases.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet? cloudStorageFileSet;
  /// Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
  /// If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryOutputPath outputPath;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionary].
  /// [bigQueryField] Field in a BigQuery table where each cell represents a dictionary phrase.
  /// [cloudStorageFileSet] Set of files containing newline-delimited lists of dictionary phrases.
  /// [outputPath] Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
  PreventionStoredInfoTypeLargeCustomDictionary({
    this.bigQueryField,
    this.cloudStorageFileSet,
    required this.outputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryField': ?bigQueryField == null ? null : bigQueryField!.toMap(),
      'cloudStorageFileSet': ?cloudStorageFileSet == null ? null : cloudStorageFileSet!.toMap(),
      'outputPath': outputPath.toMap(),
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionary(
      bigQueryField: map['bigQueryField'] == null ? null : PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField.fromMap((map['bigQueryField'] as Map).cast<String, dynamic>()),
      cloudStorageFileSet: map['cloudStorageFileSet'] == null ? null : PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet.fromMap((map['cloudStorageFileSet'] as Map).cast<String, dynamic>()),
      outputPath: PreventionStoredInfoTypeLargeCustomDictionaryOutputPath.fromMap((map['outputPath'] as Map).cast<String, dynamic>()),
    );
  }
}

