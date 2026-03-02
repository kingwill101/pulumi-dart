// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';
import 'sync_group_schema.dart';

/// {@template pulumi_sql_sync_group_args_doc}
/// The set of arguments for SyncGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_sync_group_args_doc}
class SyncGroupArgs {
  /// Conflict logging retention period.
  final pulumi.Input<int>? conflictLoggingRetentionInDays;
  /// Conflict resolution policy of the sync group.
  final pulumi.Input<String>? conflictResolutionPolicy;
  /// The name of the database on which the sync group is hosted.
  final pulumi.Input<String> databaseName;
  /// If conflict logging is enabled.
  final pulumi.Input<bool>? enableConflictLogging;
  /// Password for the sync group hub database credential.
  final pulumi.Input<String>? hubDatabasePassword;
  /// User name for the sync group hub database credential.
  final pulumi.Input<String>? hubDatabaseUserName;
  /// Sync interval of the sync group.
  final pulumi.Input<int>? interval;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Sync schema of the sync group.
  final pulumi.Input<SyncGroupSchema>? schema;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name and capacity of the SKU.
  final pulumi.Input<Sku>? sku;
  /// ARM resource id of the sync database in the sync group.
  final pulumi.Input<String>? syncDatabaseId;
  /// The name of the sync group.
  final pulumi.Input<String>? syncGroupName;
  /// If use private link connection is enabled.
  final pulumi.Input<bool>? usePrivateLinkConnection;

  /// Creates a new [SyncGroupArgs].
  /// [conflictLoggingRetentionInDays] Conflict logging retention period.
  /// [conflictResolutionPolicy] Conflict resolution policy of the sync group.
  /// [databaseName] The name of the database on which the sync group is hosted.
  /// [enableConflictLogging] If conflict logging is enabled.
  /// [hubDatabasePassword] Password for the sync group hub database credential.
  /// [hubDatabaseUserName] User name for the sync group hub database credential.
  /// [interval] Sync interval of the sync group.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [schema] Sync schema of the sync group.
  /// [serverName] The name of the server.
  /// [sku] The name and capacity of the SKU.
  /// [syncDatabaseId] ARM resource id of the sync database in the sync group.
  /// [syncGroupName] The name of the sync group.
  /// [usePrivateLinkConnection] If use private link connection is enabled.
  SyncGroupArgs({
    this.conflictLoggingRetentionInDays,
    this.conflictResolutionPolicy,
    required this.databaseName,
    this.enableConflictLogging,
    this.hubDatabasePassword,
    this.hubDatabaseUserName,
    this.interval,
    required this.resourceGroupName,
    this.schema,
    required this.serverName,
    this.sku,
    this.syncDatabaseId,
    this.syncGroupName,
    this.usePrivateLinkConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictLoggingRetentionInDays': ?conflictLoggingRetentionInDays,
      'conflictResolutionPolicy': ?conflictResolutionPolicy,
      'databaseName': databaseName,
      'enableConflictLogging': ?enableConflictLogging,
      'hubDatabasePassword': ?hubDatabasePassword,
      'hubDatabaseUserName': ?hubDatabaseUserName,
      'interval': ?interval,
      'resourceGroupName': resourceGroupName,
      'schema': ?pulumi.Input.mapOptionalInputValue<SyncGroupSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'serverName': serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'syncDatabaseId': ?syncDatabaseId,
      'syncGroupName': ?syncGroupName,
      'usePrivateLinkConnection': ?usePrivateLinkConnection,
    };
  }

  factory SyncGroupArgs.fromMap(Map<String, dynamic> map) {
    return SyncGroupArgs(
      conflictLoggingRetentionInDays: map['conflictLoggingRetentionInDays'] == null ? null : (map['conflictLoggingRetentionInDays']! as int).input(),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : (map['conflictResolutionPolicy']! as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      enableConflictLogging: map['enableConflictLogging'] == null ? null : (map['enableConflictLogging']! as bool).input(),
      hubDatabasePassword: map['hubDatabasePassword'] == null ? null : (map['hubDatabasePassword']! as String).input(),
      hubDatabaseUserName: map['hubDatabaseUserName'] == null ? null : (map['hubDatabaseUserName']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schema: map['schema'] == null ? null : (SyncGroupSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      serverName: (map['serverName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      syncDatabaseId: map['syncDatabaseId'] == null ? null : (map['syncDatabaseId']! as String).input(),
      syncGroupName: map['syncGroupName'] == null ? null : (map['syncGroupName']! as String).input(),
      usePrivateLinkConnection: map['usePrivateLinkConnection'] == null ? null : (map['usePrivateLinkConnection']! as bool).input(),
    );
  }
}

