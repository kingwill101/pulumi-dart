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
  /// A `azureMonitorMetrics` block as defined above.
  final pulumi.Input<DataCollectionRuleDestinationsAzureMonitorMetrics>? azureMonitorMetrics;
  /// One or more `eventHub` blocks as defined below.
  final pulumi.Input<DataCollectionRuleDestinationsEventHub>? eventHub;
  /// One or more `eventHub` blocks as defined below.
  final pulumi.Input<DataCollectionRuleDestinationsEventHubDirect>? eventHubDirect;
  /// One or more `logAnalytics` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsLogAnalytic>>? logAnalytics;
  /// One or more `monitorAccount` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsMonitorAccount>>? monitorAccounts;
  /// One or more `storageBlobDirect` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsStorageBlobDirect>>? storageBlobDirects;
  /// One or more `storageBlob` blocks as defined below.
  final pulumi.Input<List<DataCollectionRuleDestinationsStorageBlob>>? storageBlobs;
  /// One or more `storageTableDirect` blocks as defined below.
  ///
  /// &gt; **Note:** `eventHubDirect`, `storageBlobDirect`, and `storageTableDirect` are only available for rules of kind `AgentDirectToStore`.
  ///
  /// &gt; **Note:** At least one of `azureMonitorMetrics`, `eventHub`, `eventHubDirect`, `logAnalytics`, `monitorAccount`, `storageBlob`, `storageBlobDirect`,and `storageTableDirect` blocks must be specified.
  final pulumi.Input<List<DataCollectionRuleDestinationsStorageTableDirect>>? storageTableDirects;

  /// Creates a new [DataCollectionRuleDestinations].
  /// [azureMonitorMetrics] A `azureMonitorMetrics` block as defined above.
  /// [eventHub] One or more `eventHub` blocks as defined below.
  /// [eventHubDirect] One or more `eventHub` blocks as defined below.
  /// [logAnalytics] One or more `logAnalytics` blocks as defined below.
  /// [monitorAccounts] One or more `monitorAccount` blocks as defined below.
  /// [storageBlobDirects] One or more `storageBlobDirect` blocks as defined below.
  /// [storageBlobs] One or more `storageBlob` blocks as defined below.
  /// [storageTableDirects] One or more `storageTableDirect` blocks as defined below.
  const DataCollectionRuleDestinations({
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
      azureMonitorMetrics: (() { final guardedValue = map['azureMonitorMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDestinationsAzureMonitorMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHub: (() { final guardedValue = map['eventHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDestinationsEventHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHubDirect: (() { final guardedValue = map['eventHubDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionRuleDestinationsEventHubDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalytics: (() { final guardedValue = map['logAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDestinationsLogAnalytic>(guardedValue, (value) => DataCollectionRuleDestinationsLogAnalytic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monitorAccounts: (() { final guardedValue = map['monitorAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDestinationsMonitorAccount>(guardedValue, (value) => DataCollectionRuleDestinationsMonitorAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageBlobDirects: (() { final guardedValue = map['storageBlobDirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDestinationsStorageBlobDirect>(guardedValue, (value) => DataCollectionRuleDestinationsStorageBlobDirect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageBlobs: (() { final guardedValue = map['storageBlobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDestinationsStorageBlob>(guardedValue, (value) => DataCollectionRuleDestinationsStorageBlob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageTableDirects: (() { final guardedValue = map['storageTableDirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDestinationsStorageTableDirect>(guardedValue, (value) => DataCollectionRuleDestinationsStorageTableDirect.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
