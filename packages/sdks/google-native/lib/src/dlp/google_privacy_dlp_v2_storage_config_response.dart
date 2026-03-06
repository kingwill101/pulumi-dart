// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_options_response.dart';
import 'google_privacy_dlp_v2_cloud_storage_options_response.dart';
import 'google_privacy_dlp_v2_datastore_options_response.dart';
import 'google_privacy_dlp_v2_hybrid_options_response.dart';
import 'google_privacy_dlp_v2_timespan_config_response.dart';

/// Shared message indicating Cloud storage type.
class GooglePrivacyDlpV2StorageConfigResponse {
  /// BigQuery options.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryOptionsResponse> bigQueryOptions;
  /// Cloud Storage options.
  final pulumi.Input<GooglePrivacyDlpV2CloudStorageOptionsResponse> cloudStorageOptions;
  /// Google Cloud Datastore options.
  final pulumi.Input<GooglePrivacyDlpV2DatastoreOptionsResponse> datastoreOptions;
  /// Hybrid inspection options.
  final pulumi.Input<GooglePrivacyDlpV2HybridOptionsResponse> hybridOptions;
  final pulumi.Input<GooglePrivacyDlpV2TimespanConfigResponse> timespanConfig;

  /// Creates a new [GooglePrivacyDlpV2StorageConfigResponse].
  /// [bigQueryOptions] BigQuery options.
  /// [cloudStorageOptions] Cloud Storage options.
  /// [datastoreOptions] Google Cloud Datastore options.
  /// [hybridOptions] Hybrid inspection options.
  /// [timespanConfig] Required.
  const GooglePrivacyDlpV2StorageConfigResponse({
    required this.bigQueryOptions,
    required this.cloudStorageOptions,
    required this.datastoreOptions,
    required this.hybridOptions,
    required this.timespanConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryOptionsResponse, Map<String, dynamic>>(bigQueryOptions, (value) => value.toMap()),
      'cloudStorageOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CloudStorageOptionsResponse, Map<String, dynamic>>(cloudStorageOptions, (value) => value.toMap()),
      'datastoreOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DatastoreOptionsResponse, Map<String, dynamic>>(datastoreOptions, (value) => value.toMap()),
      'hybridOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2HybridOptionsResponse, Map<String, dynamic>>(hybridOptions, (value) => value.toMap()),
      'timespanConfig': pulumi.Input.mapInputValue<GooglePrivacyDlpV2TimespanConfigResponse, Map<String, dynamic>>(timespanConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StorageConfigResponse(
      bigQueryOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryOptionsResponse.fromMap((map['bigQueryOptions']! as Map).cast<String, dynamic>())),
      cloudStorageOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2CloudStorageOptionsResponse.fromMap((map['cloudStorageOptions']! as Map).cast<String, dynamic>())),
      datastoreOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2DatastoreOptionsResponse.fromMap((map['datastoreOptions']! as Map).cast<String, dynamic>())),
      hybridOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2HybridOptionsResponse.fromMap((map['hybridOptions']! as Map).cast<String, dynamic>())),
      timespanConfig: pulumi.Input.fromValue(GooglePrivacyDlpV2TimespanConfigResponse.fromMap((map['timespanConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

