// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';
import 'sync_group_schema_response.dart';

/// Result data returned by getSyncGroup.
class GetSyncGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Conflict logging retention period.
  final int? conflictLoggingRetentionInDays;
  /// Conflict resolution policy of the sync group.
  final String? conflictResolutionPolicy;
  /// If conflict logging is enabled.
  final bool? enableConflictLogging;
  /// User name for the sync group hub database credential.
  final String? hubDatabaseUserName;
  /// Resource ID.
  final String id;
  /// Sync interval of the sync group.
  final int? interval;
  /// Last sync time of the sync group.
  final String lastSyncTime;
  /// Resource name.
  final String name;
  /// Private endpoint name of the sync group if use private link connection is enabled.
  final String privateEndpointName;
  /// Sync schema of the sync group.
  final SyncGroupSchemaResponse? schema;
  /// The name and capacity of the SKU.
  final SkuResponse? sku;
  /// ARM resource id of the sync database in the sync group.
  final String? syncDatabaseId;
  /// Sync state of the sync group.
  final String syncState;
  /// Resource type.
  final String type;
  /// If use private link connection is enabled.
  final bool? usePrivateLinkConnection;

  /// Creates a new [GetSyncGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conflictLoggingRetentionInDays] Conflict logging retention period.
  /// [conflictResolutionPolicy] Conflict resolution policy of the sync group.
  /// [enableConflictLogging] If conflict logging is enabled.
  /// [hubDatabaseUserName] User name for the sync group hub database credential.
  /// [id] Resource ID.
  /// [interval] Sync interval of the sync group.
  /// [lastSyncTime] Last sync time of the sync group.
  /// [name] Resource name.
  /// [privateEndpointName] Private endpoint name of the sync group if use private link connection is enabled.
  /// [schema] Sync schema of the sync group.
  /// [sku] The name and capacity of the SKU.
  /// [syncDatabaseId] ARM resource id of the sync database in the sync group.
  /// [syncState] Sync state of the sync group.
  /// [type] Resource type.
  /// [usePrivateLinkConnection] If use private link connection is enabled.
  GetSyncGroupResult({
    required this.azureApiVersion,
    this.conflictLoggingRetentionInDays,
    this.conflictResolutionPolicy,
    this.enableConflictLogging,
    this.hubDatabaseUserName,
    required this.id,
    this.interval,
    required this.lastSyncTime,
    required this.name,
    required this.privateEndpointName,
    this.schema,
    this.sku,
    this.syncDatabaseId,
    required this.syncState,
    required this.type,
    this.usePrivateLinkConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'conflictLoggingRetentionInDays': ?conflictLoggingRetentionInDays,
      'conflictResolutionPolicy': ?conflictResolutionPolicy,
      'enableConflictLogging': ?enableConflictLogging,
      'hubDatabaseUserName': ?hubDatabaseUserName,
      'id': id,
      'interval': ?interval,
      'lastSyncTime': lastSyncTime,
      'name': name,
      'privateEndpointName': privateEndpointName,
      'schema': ?schema == null ? null : schema!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'syncDatabaseId': ?syncDatabaseId,
      'syncState': syncState,
      'type': type,
      'usePrivateLinkConnection': ?usePrivateLinkConnection,
    };
  }

  factory GetSyncGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSyncGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      conflictLoggingRetentionInDays: map['conflictLoggingRetentionInDays'] == null ? null : map['conflictLoggingRetentionInDays'] as int,
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : map['conflictResolutionPolicy'] as String,
      enableConflictLogging: map['enableConflictLogging'] == null ? null : map['enableConflictLogging'] as bool,
      hubDatabaseUserName: map['hubDatabaseUserName'] == null ? null : map['hubDatabaseUserName'] as String,
      id: map['id'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      lastSyncTime: map['lastSyncTime'] as String,
      name: map['name'] as String,
      privateEndpointName: map['privateEndpointName'] as String,
      schema: map['schema'] == null ? null : SyncGroupSchemaResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      syncDatabaseId: map['syncDatabaseId'] == null ? null : map['syncDatabaseId'] as String,
      syncState: map['syncState'] as String,
      type: map['type'] as String,
      usePrivateLinkConnection: map['usePrivateLinkConnection'] == null ? null : map['usePrivateLinkConnection'] as bool,
    );
  }
}

