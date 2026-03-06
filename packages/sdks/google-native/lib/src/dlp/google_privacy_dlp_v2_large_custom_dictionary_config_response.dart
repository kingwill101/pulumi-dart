// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_field_response.dart';
import 'google_privacy_dlp_v2_cloud_storage_file_set_response.dart';
import 'google_privacy_dlp_v2_cloud_storage_path_response.dart';

/// Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the [limits](https://cloud.google.com/dlp/limits) page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using `CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size requirements.
class GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryFieldResponse> bigQueryField;
  /// Set of files containing newline-delimited lists of dictionary phrases.
  final pulumi.Input<GooglePrivacyDlpV2CloudStorageFileSetResponse> cloudStorageFileSet;
  /// Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  final pulumi.Input<GooglePrivacyDlpV2CloudStoragePathResponse> outputPath;

  /// Creates a new [GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse].
  /// [bigQueryField] Field in a BigQuery table where each cell represents a dictionary phrase.
  /// [cloudStorageFileSet] Set of files containing newline-delimited lists of dictionary phrases.
  /// [outputPath] Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  const GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse({
    required this.bigQueryField,
    required this.cloudStorageFileSet,
    required this.outputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryField': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryFieldResponse, Map<String, dynamic>>(bigQueryField, (value) => value.toMap()),
      'cloudStorageFileSet': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CloudStorageFileSetResponse, Map<String, dynamic>>(cloudStorageFileSet, (value) => value.toMap()),
      'outputPath': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CloudStoragePathResponse, Map<String, dynamic>>(outputPath, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse(
      bigQueryField: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryFieldResponse.fromMap((map['bigQueryField']! as Map).cast<String, dynamic>())),
      cloudStorageFileSet: pulumi.Input.fromValue(GooglePrivacyDlpV2CloudStorageFileSetResponse.fromMap((map['cloudStorageFileSet']! as Map).cast<String, dynamic>())),
      outputPath: pulumi.Input.fromValue(GooglePrivacyDlpV2CloudStoragePathResponse.fromMap((map['outputPath']! as Map).cast<String, dynamic>())),
    );
  }
}

