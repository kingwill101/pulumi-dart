// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_storage_config_big_query_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_cloud_storage_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_datastore_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_hybrid_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_timespan_config.dart';

class PreventionJobTriggerInspectJobStorageConfig {
  /// Options defining BigQuery table and row identifiers.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigBigQueryOptions? bigQueryOptions;
  /// Options defining a file or a set of files within a Google Cloud Storage bucket.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions? cloudStorageOptions;
  /// Options defining a data set within Google Cloud Datastore.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigDatastoreOptions? datastoreOptions;
  /// Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigHybridOptions? hybridOptions;
  /// Configuration of the timespan of the items to include in scanning
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigTimespanConfig? timespanConfig;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfig].
  /// [bigQueryOptions] Options defining BigQuery table and row identifiers.
  /// [cloudStorageOptions] Options defining a file or a set of files within a Google Cloud Storage bucket.
  /// [datastoreOptions] Options defining a data set within Google Cloud Datastore.
  /// [hybridOptions] Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.
  /// [timespanConfig] Configuration of the timespan of the items to include in scanning
  PreventionJobTriggerInspectJobStorageConfig({
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

  factory PreventionJobTriggerInspectJobStorageConfig.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfig(
      bigQueryOptions: map['bigQueryOptions'] == null ? null : PreventionJobTriggerInspectJobStorageConfigBigQueryOptions.fromMap((map['bigQueryOptions'] as Map).cast<String, dynamic>()),
      cloudStorageOptions: map['cloudStorageOptions'] == null ? null : PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions.fromMap((map['cloudStorageOptions'] as Map).cast<String, dynamic>()),
      datastoreOptions: map['datastoreOptions'] == null ? null : PreventionJobTriggerInspectJobStorageConfigDatastoreOptions.fromMap((map['datastoreOptions'] as Map).cast<String, dynamic>()),
      hybridOptions: map['hybridOptions'] == null ? null : PreventionJobTriggerInspectJobStorageConfigHybridOptions.fromMap((map['hybridOptions'] as Map).cast<String, dynamic>()),
      timespanConfig: map['timespanConfig'] == null ? null : PreventionJobTriggerInspectJobStorageConfigTimespanConfig.fromMap((map['timespanConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

