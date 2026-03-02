// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_options.dart';
import 'google_privacy_dlp_v2_cloud_storage_options.dart';
import 'google_privacy_dlp_v2_datastore_options.dart';
import 'google_privacy_dlp_v2_hybrid_options.dart';
import 'google_privacy_dlp_v2_timespan_config.dart';

/// Shared message indicating Cloud storage type.
class GooglePrivacyDlpV2StorageConfig {
  /// BigQuery options.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryOptions>? bigQueryOptions;
  /// Cloud Storage options.
  final pulumi.Input<GooglePrivacyDlpV2CloudStorageOptions>? cloudStorageOptions;
  /// Google Cloud Datastore options.
  final pulumi.Input<GooglePrivacyDlpV2DatastoreOptions>? datastoreOptions;
  /// Hybrid inspection options.
  final pulumi.Input<GooglePrivacyDlpV2HybridOptions>? hybridOptions;
  final pulumi.Input<GooglePrivacyDlpV2TimespanConfig>? timespanConfig;

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
      'bigQueryOptions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryOptions, Map<String, dynamic>>(bigQueryOptions, (value) => value.toMap()),
      'cloudStorageOptions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CloudStorageOptions, Map<String, dynamic>>(cloudStorageOptions, (value) => value.toMap()),
      'datastoreOptions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DatastoreOptions, Map<String, dynamic>>(datastoreOptions, (value) => value.toMap()),
      'hybridOptions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2HybridOptions, Map<String, dynamic>>(hybridOptions, (value) => value.toMap()),
      'timespanConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2TimespanConfig, Map<String, dynamic>>(timespanConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2StorageConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StorageConfig(
      bigQueryOptions: map['bigQueryOptions'] == null ? null : (GooglePrivacyDlpV2BigQueryOptions.fromMap((map['bigQueryOptions']! as Map).cast<String, dynamic>())).input(),
      cloudStorageOptions: map['cloudStorageOptions'] == null ? null : (GooglePrivacyDlpV2CloudStorageOptions.fromMap((map['cloudStorageOptions']! as Map).cast<String, dynamic>())).input(),
      datastoreOptions: map['datastoreOptions'] == null ? null : (GooglePrivacyDlpV2DatastoreOptions.fromMap((map['datastoreOptions']! as Map).cast<String, dynamic>())).input(),
      hybridOptions: map['hybridOptions'] == null ? null : (GooglePrivacyDlpV2HybridOptions.fromMap((map['hybridOptions']! as Map).cast<String, dynamic>())).input(),
      timespanConfig: map['timespanConfig'] == null ? null : (GooglePrivacyDlpV2TimespanConfig.fromMap((map['timespanConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

