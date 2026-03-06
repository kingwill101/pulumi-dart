// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_field.dart';
import 'google_privacy_dlp_v2_cloud_storage_file_set.dart';
import 'google_privacy_dlp_v2_cloud_storage_path.dart';

/// Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the [limits](https://cloud.google.com/dlp/limits) page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using `CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size requirements.
class GooglePrivacyDlpV2LargeCustomDictionaryConfig {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryField>? bigQueryField;
  /// Set of files containing newline-delimited lists of dictionary phrases.
  final pulumi.Input<GooglePrivacyDlpV2CloudStorageFileSet>? cloudStorageFileSet;
  /// Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  final pulumi.Input<GooglePrivacyDlpV2CloudStoragePath>? outputPath;

  /// Creates a new [GooglePrivacyDlpV2LargeCustomDictionaryConfig].
  /// [bigQueryField] Field in a BigQuery table where each cell represents a dictionary phrase.
  /// [cloudStorageFileSet] Set of files containing newline-delimited lists of dictionary phrases.
  /// [outputPath] Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  const GooglePrivacyDlpV2LargeCustomDictionaryConfig({
    this.bigQueryField,
    this.cloudStorageFileSet,
    this.outputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryField': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryField, Map<String, dynamic>>(bigQueryField, (value) => value.toMap()),
      'cloudStorageFileSet': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CloudStorageFileSet, Map<String, dynamic>>(cloudStorageFileSet, (value) => value.toMap()),
      'outputPath': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CloudStoragePath, Map<String, dynamic>>(outputPath, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LargeCustomDictionaryConfig(
      bigQueryField: (() { final guardedValue = map['bigQueryField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudStorageFileSet: (() { final guardedValue = map['cloudStorageFileSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CloudStorageFileSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputPath: (() { final guardedValue = map['outputPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CloudStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

