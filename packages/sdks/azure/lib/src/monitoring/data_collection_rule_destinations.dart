// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_destinations_azure_monitor_metrics.dart';
import 'data_collection_rule_destinations_event_hub.dart';
import 'data_collection_rule_destinations_event_hub_direct.dart';
import 'data_collection_rule_destinations_log_analytic.dart';
import 'data_collection_rule_destinations_monitor_account.dart';
import 'data_collection_rule_destinations_storage_blob.dart';
import 'data_collection_rule_destinations_storage_blob_direct.dart';
import 'data_collection_rule_destinations_storage_table_direct.dart';

class DataCollectionRuleDestinations {
  /// A `azure_monitor_metrics` block as defined above.
  final pulumi.Input<DataCollectionRuleDestinationsAzureMonitorMetrics>? azureMonitorMetrics;
  /// One or more `event_hub` blocks as defined below.
  final pulumi.Input<DataCollectionRuleDestinationsEventHub>? eventHub;
  /// One or more `event_hub` blocks as defined below.
  final pulumi.Input<DataCollectionRuleDestinationsEventHubDirect>? eventHubDirect;
  /// One or more `log_analytics` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsLogAnalytic>>? logAnalytics;
  /// One or more `monitor_account` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsMonitorAccount>>? monitorAccounts;
  /// One or more `storage_blob_direct` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsStorageBlobDirect>>? storageBlobDirects;
  /// One or more `storage_blob` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsStorageBlob>>? storageBlobs;
  /// One or more `storage_table_direct` blocks as defined below.
  ///
  /// > **Note:** `event_hub_direct`, `storage_blob_direct`, and `storage_table_direct` are only available for rules of kind `AgentDirectToStore`.
  ///
  /// > **Note:** At least one of `azure_monitor_metrics`, `event_hub`, `event_hub_direct`, `log_analytics`, `monitor_account`, `storage_blob`, `storage_blob_direct`,and `storage_table_direct` blocks must be specified.
  final pulumi.Input<List<DataCollectionRuleDestinationsStorageTableDirect>>? storageTableDirects;

  /// Creates a new [DataCollectionRuleDestinations].
  /// [azureMonitorMetrics] A `azure_monitor_metrics` block as defined above.
  /// [eventHub] One or more `event_hub` blocks as defined below.
  /// [eventHubDirect] One or more `event_hub` blocks as defined below.
  /// [logAnalytics] One or more `log_analytics` blocks as defined below.
  /// [monitorAccounts] One or more `monitor_account` blocks as defined below.
  /// [storageBlobDirects] One or more `storage_blob_direct` blocks as defined below.
  /// [storageBlobs] One or more `storage_blob` blocks as defined below.
  /// [storageTableDirects] One or more `storage_table_direct` blocks as defined below.
  DataCollectionRuleDestinations({
    this.azureMonitorMetrics,
    this.eventHub,
    this.eventHubDirect,
    this.logAnalytics,
    this.monitorAccounts,
    this.storageBlobDirects,
    this.storageBlobs,
    this.storageTableDirects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorMetrics': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDestinationsAzureMonitorMetrics, Map<String, dynamic>>(azureMonitorMetrics, (value) => value.toMap()),
      'eventHub': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDestinationsEventHub, Map<String, dynamic>>(eventHub, (value) => value.toMap()),
      'eventHubDirect': ?pulumi.Input.mapOptionalInputValue<DataCollectionRuleDestinationsEventHubDirect, Map<String, dynamic>>(eventHubDirect, (value) => value.toMap()),
      'logAnalytics': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDestinationsLogAnalytic>, List<Map<String, dynamic>>>(logAnalytics, (value) => pulumi.Input.encodeList<DataCollectionRuleDestinationsLogAnalytic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitorAccounts': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDestinationsMonitorAccount>, List<Map<String, dynamic>>>(monitorAccounts, (value) => pulumi.Input.encodeList<DataCollectionRuleDestinationsMonitorAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBlobDirects': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDestinationsStorageBlobDirect>, List<Map<String, dynamic>>>(storageBlobDirects, (value) => pulumi.Input.encodeList<DataCollectionRuleDestinationsStorageBlobDirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBlobs': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDestinationsStorageBlob>, List<Map<String, dynamic>>>(storageBlobs, (value) => pulumi.Input.encodeList<DataCollectionRuleDestinationsStorageBlob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageTableDirects': ?pulumi.Input.mapOptionalInputValue<List<DataCollectionRuleDestinationsStorageTableDirect>, List<Map<String, dynamic>>>(storageTableDirects, (value) => pulumi.Input.encodeList<DataCollectionRuleDestinationsStorageTableDirect, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleDestinations.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinations(
      azureMonitorMetrics: map['azureMonitorMetrics'] == null ? null : (DataCollectionRuleDestinationsAzureMonitorMetrics.fromMap((map['azureMonitorMetrics']! as Map).cast<String, dynamic>())).input(),
      eventHub: map['eventHub'] == null ? null : (DataCollectionRuleDestinationsEventHub.fromMap((map['eventHub']! as Map).cast<String, dynamic>())).input(),
      eventHubDirect: map['eventHubDirect'] == null ? null : (DataCollectionRuleDestinationsEventHubDirect.fromMap((map['eventHubDirect']! as Map).cast<String, dynamic>())).input(),
      logAnalytics: map['logAnalytics'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDestinationsLogAnalytic>(map['logAnalytics']!, (value) => DataCollectionRuleDestinationsLogAnalytic.fromMap((value as Map).cast<String, dynamic>()))).input(),
      monitorAccounts: map['monitorAccounts'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDestinationsMonitorAccount>(map['monitorAccounts']!, (value) => DataCollectionRuleDestinationsMonitorAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageBlobDirects: map['storageBlobDirects'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDestinationsStorageBlobDirect>(map['storageBlobDirects']!, (value) => DataCollectionRuleDestinationsStorageBlobDirect.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageBlobs: map['storageBlobs'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDestinationsStorageBlob>(map['storageBlobs']!, (value) => DataCollectionRuleDestinationsStorageBlob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageTableDirects: map['storageTableDirects'] == null ? null : (pulumi.Input.decodeList<DataCollectionRuleDestinationsStorageTableDirect>(map['storageTableDirects']!, (value) => DataCollectionRuleDestinationsStorageTableDirect.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

