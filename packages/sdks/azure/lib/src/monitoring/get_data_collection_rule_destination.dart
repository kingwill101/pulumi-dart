// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_destination_azure_monitor_metric.dart';
import 'get_data_collection_rule_destination_event_hub.dart';
import 'get_data_collection_rule_destination_event_hub_direct.dart';
import 'get_data_collection_rule_destination_log_analytic.dart';
import 'get_data_collection_rule_destination_monitor_account.dart';
import 'get_data_collection_rule_destination_storage_blob.dart';
import 'get_data_collection_rule_destination_storage_blob_direct.dart';
import 'get_data_collection_rule_destination_storage_table_direct.dart';

class GetDataCollectionRuleDestination {
  /// A `azure_monitor_metrics` block as defined above.
  final pulumi.Input<List<GetDataCollectionRuleDestinationAzureMonitorMetric>> azureMonitorMetrics;
  /// One or more `event_hub` blocks as defined below.
  final pulumi.Input<GetDataCollectionRuleDestinationEventHub>? eventHub;
  /// One or more `event_hub_direct` blocks as defined below.
  final pulumi.Input<GetDataCollectionRuleDestinationEventHubDirect>? eventHubDirect;
  /// One or more `log_analytics` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDestinationLogAnalytic>> logAnalytics;
  /// One or more `monitor_account` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDestinationMonitorAccount>> monitorAccounts;
  /// One or more `storage_blob_direct` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDestinationStorageBlobDirect>> storageBlobDirects;
  /// One or more `storage_blob` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDestinationStorageBlob>> storageBlobs;
  /// One or more `storage_table_direct` blocks as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDestinationStorageTableDirect>> storageTableDirects;

  /// Creates a new [GetDataCollectionRuleDestination].
  /// [azureMonitorMetrics] A `azure_monitor_metrics` block as defined above.
  /// [eventHub] One or more `event_hub` blocks as defined below.
  /// [eventHubDirect] One or more `event_hub_direct` blocks as defined below.
  /// [logAnalytics] One or more `log_analytics` blocks as defined below.
  /// [monitorAccounts] One or more `monitor_account` blocks as defined below.
  /// [storageBlobDirects] One or more `storage_blob_direct` blocks as defined below.
  /// [storageBlobs] One or more `storage_blob` blocks as defined below.
  /// [storageTableDirects] One or more `storage_table_direct` blocks as defined below.
  GetDataCollectionRuleDestination({
    required this.azureMonitorMetrics,
    this.eventHub,
    this.eventHubDirect,
    required this.logAnalytics,
    required this.monitorAccounts,
    required this.storageBlobDirects,
    required this.storageBlobs,
    required this.storageTableDirects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorMetrics': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDestinationAzureMonitorMetric>, List<Map<String, dynamic>>>(azureMonitorMetrics, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDestinationAzureMonitorMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHub': ?pulumi.Input.mapOptionalInputValue<GetDataCollectionRuleDestinationEventHub, Map<String, dynamic>>(eventHub, (value) => value.toMap()),
      'eventHubDirect': ?pulumi.Input.mapOptionalInputValue<GetDataCollectionRuleDestinationEventHubDirect, Map<String, dynamic>>(eventHubDirect, (value) => value.toMap()),
      'logAnalytics': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDestinationLogAnalytic>, List<Map<String, dynamic>>>(logAnalytics, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDestinationLogAnalytic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitorAccounts': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDestinationMonitorAccount>, List<Map<String, dynamic>>>(monitorAccounts, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDestinationMonitorAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBlobDirects': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDestinationStorageBlobDirect>, List<Map<String, dynamic>>>(storageBlobDirects, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDestinationStorageBlobDirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBlobs': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDestinationStorageBlob>, List<Map<String, dynamic>>>(storageBlobs, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDestinationStorageBlob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageTableDirects': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDestinationStorageTableDirect>, List<Map<String, dynamic>>>(storageTableDirects, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDestinationStorageTableDirect, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataCollectionRuleDestination.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestination(
      azureMonitorMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDestinationAzureMonitorMetric>(map['azureMonitorMetrics']!, (value) => GetDataCollectionRuleDestinationAzureMonitorMetric.fromMap((value as Map).cast<String, dynamic>()))),
      eventHub: (() { final guardedValue = map['eventHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDataCollectionRuleDestinationEventHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHubDirect: (() { final guardedValue = map['eventHubDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDataCollectionRuleDestinationEventHubDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalytics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDestinationLogAnalytic>(map['logAnalytics']!, (value) => GetDataCollectionRuleDestinationLogAnalytic.fromMap((value as Map).cast<String, dynamic>()))),
      monitorAccounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDestinationMonitorAccount>(map['monitorAccounts']!, (value) => GetDataCollectionRuleDestinationMonitorAccount.fromMap((value as Map).cast<String, dynamic>()))),
      storageBlobDirects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDestinationStorageBlobDirect>(map['storageBlobDirects']!, (value) => GetDataCollectionRuleDestinationStorageBlobDirect.fromMap((value as Map).cast<String, dynamic>()))),
      storageBlobs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDestinationStorageBlob>(map['storageBlobs']!, (value) => GetDataCollectionRuleDestinationStorageBlob.fromMap((value as Map).cast<String, dynamic>()))),
      storageTableDirects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDestinationStorageTableDirect>(map['storageTableDirects']!, (value) => GetDataCollectionRuleDestinationStorageTableDirect.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

