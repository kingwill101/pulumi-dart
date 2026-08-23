// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_large_custom_dictionary_big_query_field.dart';
import 'prevention_stored_info_type_large_custom_dictionary_cloud_storage_file_set.dart';
import 'prevention_stored_info_type_large_custom_dictionary_output_path.dart';

class PreventionStoredInfoTypeLargeCustomDictionary {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField>? bigQueryField;
  /// Set of files containing newline-delimited lists of dictionary phrases.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet>? cloudStorageFileSet;
  /// Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
  /// If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  /// Structure is documented below.
  final pulumi.Input<PreventionStoredInfoTypeLargeCustomDictionaryOutputPath> outputPath;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionary].
  /// [bigQueryField] Field in a BigQuery table where each cell represents a dictionary phrase.
  /// [cloudStorageFileSet] Set of files containing newline-delimited lists of dictionary phrases.
  /// [outputPath] Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
  const PreventionStoredInfoTypeLargeCustomDictionary({
    this.bigQueryField,
    this.cloudStorageFileSet,
    required this.outputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryField': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField, Map<String, dynamic>>(bigQueryField, (value) => value.toMap()),
      'cloudStorageFileSet': ?pulumi.Input.mapOptionalInputValue<PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet, Map<String, dynamic>>(cloudStorageFileSet, (value) => value.toMap()),
      'outputPath': pulumi.Input.mapInputValue<PreventionStoredInfoTypeLargeCustomDictionaryOutputPath, Map<String, dynamic>>(outputPath, (value) => value.toMap()),
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionary(
      bigQueryField: (() { final guardedValue = map['bigQueryField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudStorageFileSet: (() { final guardedValue = map['cloudStorageFileSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputPath: pulumi.Input.fromValue(PreventionStoredInfoTypeLargeCustomDictionaryOutputPath.fromMap((map['outputPath']! as Map).cast<String, dynamic>())),
    );
  }
}
