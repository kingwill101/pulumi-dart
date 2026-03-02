// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_storage_config_big_query_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_cloud_storage_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_datastore_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_hybrid_options.dart';
import 'prevention_job_trigger_inspect_job_storage_config_timespan_config.dart';

class PreventionJobTriggerInspectJobStorageConfig {
  /// Options defining BigQuery table and row identifiers.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigBigQueryOptions>? bigQueryOptions;
  /// Options defining a file or a set of files within a Google Cloud Storage bucket.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions>? cloudStorageOptions;
  /// Options defining a data set within Google Cloud Datastore.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigDatastoreOptions>? datastoreOptions;
  /// Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigHybridOptions>? hybridOptions;
  /// Configuration of the timespan of the items to include in scanning
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobStorageConfigTimespanConfig>? timespanConfig;

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
      'bigQueryOptions': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigBigQueryOptions, Map<String, dynamic>>(bigQueryOptions, (value) => value.toMap()),
      'cloudStorageOptions': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions, Map<String, dynamic>>(cloudStorageOptions, (value) => value.toMap()),
      'datastoreOptions': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigDatastoreOptions, Map<String, dynamic>>(datastoreOptions, (value) => value.toMap()),
      'hybridOptions': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigHybridOptions, Map<String, dynamic>>(hybridOptions, (value) => value.toMap()),
      'timespanConfig': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobStorageConfigTimespanConfig, Map<String, dynamic>>(timespanConfig, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfig.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfig(
      bigQueryOptions: map['bigQueryOptions'] == null ? null : (PreventionJobTriggerInspectJobStorageConfigBigQueryOptions.fromMap((map['bigQueryOptions']! as Map).cast<String, dynamic>())).input(),
      cloudStorageOptions: map['cloudStorageOptions'] == null ? null : (PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions.fromMap((map['cloudStorageOptions']! as Map).cast<String, dynamic>())).input(),
      datastoreOptions: map['datastoreOptions'] == null ? null : (PreventionJobTriggerInspectJobStorageConfigDatastoreOptions.fromMap((map['datastoreOptions']! as Map).cast<String, dynamic>())).input(),
      hybridOptions: map['hybridOptions'] == null ? null : (PreventionJobTriggerInspectJobStorageConfigHybridOptions.fromMap((map['hybridOptions']! as Map).cast<String, dynamic>())).input(),
      timespanConfig: map['timespanConfig'] == null ? null : (PreventionJobTriggerInspectJobStorageConfigTimespanConfig.fromMap((map['timespanConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

