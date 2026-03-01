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
    pulumi.Output<int>? conflictLoggingRetentionInDays,
    pulumi.Output<String>? conflictResolutionPolicy,
    required pulumi.Output<String> databaseName,
    pulumi.Output<bool>? enableConflictLogging,
    pulumi.Output<String>? hubDatabasePassword,
    pulumi.Output<String>? hubDatabaseUserName,
    pulumi.Output<int>? interval,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SyncGroupSchema>? schema,
    required pulumi.Output<String> serverName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? syncDatabaseId,
    pulumi.Output<String>? syncGroupName,
    pulumi.Output<bool>? usePrivateLinkConnection,
  }) :
      conflictLoggingRetentionInDays = pulumi.Input.asOptionalInput<int>(conflictLoggingRetentionInDays),
      conflictResolutionPolicy = pulumi.Input.asOptionalInput<String>(conflictResolutionPolicy),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      enableConflictLogging = pulumi.Input.asOptionalInput<bool>(enableConflictLogging),
      hubDatabasePassword = pulumi.Input.asOptionalInput<String>(hubDatabasePassword),
      hubDatabaseUserName = pulumi.Input.asOptionalInput<String>(hubDatabaseUserName),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schema = pulumi.Input.asOptionalInput<SyncGroupSchema>(schema),
      serverName = pulumi.Input.asInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      syncDatabaseId = pulumi.Input.asOptionalInput<String>(syncDatabaseId),
      syncGroupName = pulumi.Input.asOptionalInput<String>(syncGroupName),
      usePrivateLinkConnection = pulumi.Input.asOptionalInput<bool>(usePrivateLinkConnection);

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
      conflictLoggingRetentionInDays: map['conflictLoggingRetentionInDays'] == null ? null : pulumi.Output.create<int>(map['conflictLoggingRetentionInDays'] as int),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : pulumi.Output.create<String>(map['conflictResolutionPolicy'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      enableConflictLogging: map['enableConflictLogging'] == null ? null : pulumi.Output.create<bool>(map['enableConflictLogging'] as bool),
      hubDatabasePassword: map['hubDatabasePassword'] == null ? null : pulumi.Output.create<String>(map['hubDatabasePassword'] as String),
      hubDatabaseUserName: map['hubDatabaseUserName'] == null ? null : pulumi.Output.create<String>(map['hubDatabaseUserName'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<SyncGroupSchema>(SyncGroupSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      syncDatabaseId: map['syncDatabaseId'] == null ? null : pulumi.Output.create<String>(map['syncDatabaseId'] as String),
      syncGroupName: map['syncGroupName'] == null ? null : pulumi.Output.create<String>(map['syncGroupName'] as String),
      usePrivateLinkConnection: map['usePrivateLinkConnection'] == null ? null : pulumi.Output.create<bool>(map['usePrivateLinkConnection'] as bool),
    );
  }
}

