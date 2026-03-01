// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_options.dart';
import 'google_privacy_dlp_v2_cloud_storage_options.dart';
import 'google_privacy_dlp_v2_datastore_options.dart';
import 'google_privacy_dlp_v2_hybrid_options.dart';
import 'google_privacy_dlp_v2_timespan_config.dart';

/// Shared message indicating Cloud storage type.
class GooglePrivacyDlpV2StorageConfig {
  /// BigQuery options.
  final GooglePrivacyDlpV2BigQueryOptions? bigQueryOptions;
  /// Cloud Storage options.
  final GooglePrivacyDlpV2CloudStorageOptions? cloudStorageOptions;
  /// Google Cloud Datastore options.
  final GooglePrivacyDlpV2DatastoreOptions? datastoreOptions;
  /// Hybrid inspection options.
  final GooglePrivacyDlpV2HybridOptions? hybridOptions;
  final GooglePrivacyDlpV2TimespanConfig? timespanConfig;

  /// Creates a new [GooglePrivacyDlpV2StorageConfig].
  /// [bigQueryOptions] BigQuery options.
  /// [cloudStorageOptions] Cloud Storage options.
  /// [datastoreOptions] Google Cloud Datastore options.
  /// [hybridOptions] Hybrid inspection options.
  /// [timespanConfig] Optional.
  GooglePrivacyDlpV2StorageConfig({
    this.bigQueryOptions,
    this.cloudStorageOptions,
    this.datastoreOptions,
    this.hybridOptions,
    this.timespanConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryOptions': ?bigQueryOptions == null ? null : bigQueryOptions!.toMap(),
      'cloudStorageOptions': ?cloudStorageOptions == null ? null : cloudStorageOptions!.toMap(),
      'datastoreOptions': ?datastoreOptions == null ? null : datastoreOptions!.toMap(),
      'hybridOptions': ?hybridOptions == null ? null : hybridOptions!.toMap(),
      'timespanConfig': ?timespanConfig == null ? null : timespanConfig!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2StorageConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StorageConfig(
      bigQueryOptions: map['bigQueryOptions'] == null ? null : GooglePrivacyDlpV2BigQueryOptions.fromMap((map['bigQueryOptions'] as Map).cast<String, dynamic>()),
      cloudStorageOptions: map['cloudStorageOptions'] == null ? null : GooglePrivacyDlpV2CloudStorageOptions.fromMap((map['cloudStorageOptions'] as Map).cast<String, dynamic>()),
      datastoreOptions: map['datastoreOptions'] == null ? null : GooglePrivacyDlpV2DatastoreOptions.fromMap((map['datastoreOptions'] as Map).cast<String, dynamic>()),
      hybridOptions: map['hybridOptions'] == null ? null : GooglePrivacyDlpV2HybridOptions.fromMap((map['hybridOptions'] as Map).cast<String, dynamic>()),
      timespanConfig: map['timespanConfig'] == null ? null : GooglePrivacyDlpV2TimespanConfig.fromMap((map['timespanConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

