// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_registry_notification.dart';

/// Input properties used for looking up and filtering ConnectedRegistry resources.
class ConnectedRegistryState {
  /// Should the log auditing be enabled?
  final pulumi.Input<bool>? auditLogEnabled;
  /// Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry.
  final pulumi.Input<List<String>>? clientTokenIds;
  /// The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created.
  ///
  /// &gt; **Note:** If `parentRegistryId` is not specified, the Connected Registry will be connected to the Container Registry identified by `containerRegistryId`.
  final pulumi.Input<String>? containerRegistryId;
  /// The verbosity of the logs. Possible values are `None`, `Debug`, `Information`, `Warning` and `Error`. Defaults to `None`.
  final pulumi.Input<String>? logLevel;
  /// The mode of the Connected Registry. Possible values are `Mirror`, `ReadOnly`, `ReadWrite` and `Registry`. Changing this forces a new Container Connected Registry to be created. Defaults to `ReadWrite`.
  final pulumi.Input<String>? mode;
  /// The name which should be used for this Container Connected Registry. Changing this forces a new Container Connected Registry to be created.
  final pulumi.Input<String>? name;
  /// One or more `notification` blocks as defined below.
  final pulumi.Input<List<ConnectedRegistryNotification>>? notifications;
  /// The ID of the parent registry. This can be either a Container Registry ID or a Connected Registry ID. Changing this forces a new Container Connected Registry to be created.
  final pulumi.Input<String>? parentRegistryId;
  /// The period of time (in form of ISO8601) for which a message is available to sync before it is expired. Allowed range is from `P1D` to `P90D`. Defaults to `P1D`.
  final pulumi.Input<String>? syncMessageTtl;
  /// The cron expression indicating the schedule that the Connected Registry will sync with its parent. Defaults to `* * * * *`.
  final pulumi.Input<String>? syncSchedule;
  /// The ID of the Container Registry Token which is used for synchronizing the Connected Registry. Changing this forces a new Container Connected Registry to be created.
  final pulumi.Input<String>? syncTokenId;
  /// The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from `PT3H` to `P7D`.
  final pulumi.Input<String>? syncWindow;

  /// Creates a new [ConnectedRegistryState].
  /// [auditLogEnabled] Should the log auditing be enabled?
  /// [clientTokenIds] Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry.
  /// [containerRegistryId] The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created.
  /// [logLevel] The verbosity of the logs. Possible values are `None`, `Debug`, `Information`, `Warning` and `Error`. Defaults to `None`.
  /// [mode] The mode of the Connected Registry. Possible values are `Mirror`, `ReadOnly`, `ReadWrite` and `Registry`. Changing this forces a new Container Connected Registry to be created. Defaults to `ReadWrite`.
  /// [name] The name which should be used for this Container Connected Registry. Changing this forces a new Container Connected Registry to be created.
  /// [notifications] One or more `notification` blocks as defined below.
  /// [parentRegistryId] The ID of the parent registry. This can be either a Container Registry ID or a Connected Registry ID. Changing this forces a new Container Connected Registry to be created.
  /// [syncMessageTtl] The period of time (in form of ISO8601) for which a message is available to sync before it is expired. Allowed range is from `P1D` to `P90D`. Defaults to `P1D`.
  /// [syncSchedule] The cron expression indicating the schedule that the Connected Registry will sync with its parent. Defaults to `* * * * *`.
  /// [syncTokenId] The ID of the Container Registry Token which is used for synchronizing the Connected Registry. Changing this forces a new Container Connected Registry to be created.
  /// [syncWindow] The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from `PT3H` to `P7D`.
  const ConnectedRegistryState({
    this.auditLogEnabled,
    this.clientTokenIds,
    this.containerRegistryId,
    this.logLevel,
    this.mode,
    this.name,
    this.notifications,
    this.parentRegistryId,
    this.syncMessageTtl,
    this.syncSchedule,
    this.syncTokenId,
    this.syncWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogEnabled': ?auditLogEnabled,
      'clientTokenIds': ?clientTokenIds,
      'containerRegistryId': ?containerRegistryId,
      'logLevel': ?logLevel,
      'mode': ?mode,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<ConnectedRegistryNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<ConnectedRegistryNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentRegistryId': ?parentRegistryId,
      'syncMessageTtl': ?syncMessageTtl,
      'syncSchedule': ?syncSchedule,
      'syncTokenId': ?syncTokenId,
      'syncWindow': ?syncWindow,
    };
  }

  factory ConnectedRegistryState.fromMap(Map<String, dynamic> map) {
    return ConnectedRegistryState(
      auditLogEnabled: (() { final guardedValue = map['auditLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientTokenIds: (() { final guardedValue = map['clientTokenIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectedRegistryNotification>(guardedValue, (value) => ConnectedRegistryNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parentRegistryId: (() { final guardedValue = map['parentRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncMessageTtl: (() { final guardedValue = map['syncMessageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncSchedule: (() { final guardedValue = map['syncSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncTokenId: (() { final guardedValue = map['syncTokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncWindow: (() { final guardedValue = map['syncWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
