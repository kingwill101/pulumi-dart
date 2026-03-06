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
  const PreventionJobTriggerInspectJobStorageConfig({
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
      bigQueryOptions: (() { final guardedValue = map['bigQueryOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigBigQueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudStorageOptions: (() { final guardedValue = map['cloudStorageOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datastoreOptions: (() { final guardedValue = map['datastoreOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigDatastoreOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hybridOptions: (() { final guardedValue = map['hybridOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigHybridOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timespanConfig: (() { final guardedValue = map['timespanConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobStorageConfigTimespanConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

