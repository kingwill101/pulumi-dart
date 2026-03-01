// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_registry_notification.dart';

/// {@template pulumi_containerservice_connected_registry_connected_registry_args_doc}
/// The set of arguments for ConnectedRegistry.
/// {@endtemplate}
/// {@macro pulumi_containerservice_connected_registry_connected_registry_args_doc}
class ConnectedRegistryArgs {
  /// Should the log auditing be enabled?
  final pulumi.Input<bool>? auditLogEnabled;
  /// Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry.
  final pulumi.Input<List<String>>? clientTokenIds;
  /// The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created.
  ///
  /// > **Note:** If `parent_registry_id` is not specified, the Connected Registry will be connected to the Container Registry identified by `container_registry_id`.
  final pulumi.Input<String> containerRegistryId;
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
  final pulumi.Input<String> syncTokenId;
  /// The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from `PT3H` to `P7D`.
  final pulumi.Input<String>? syncWindow;

  /// Creates a new [ConnectedRegistryArgs].
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
  ConnectedRegistryArgs({
    pulumi.Output<bool>? auditLogEnabled,
    pulumi.Output<List<String>>? clientTokenIds,
    required pulumi.Output<String> containerRegistryId,
    pulumi.Output<String>? logLevel,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<List<ConnectedRegistryNotification>>? notifications,
    pulumi.Output<String>? parentRegistryId,
    pulumi.Output<String>? syncMessageTtl,
    pulumi.Output<String>? syncSchedule,
    required pulumi.Output<String> syncTokenId,
    pulumi.Output<String>? syncWindow,
  }) :
      auditLogEnabled = pulumi.Input.asOptionalInput<bool>(auditLogEnabled),
      clientTokenIds = pulumi.Input.asOptionalInput<List<String>>(clientTokenIds),
      containerRegistryId = pulumi.Input.asInput<String>(containerRegistryId),
      logLevel = pulumi.Input.asOptionalInput<String>(logLevel),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asOptionalInput<List<ConnectedRegistryNotification>>(notifications),
      parentRegistryId = pulumi.Input.asOptionalInput<String>(parentRegistryId),
      syncMessageTtl = pulumi.Input.asOptionalInput<String>(syncMessageTtl),
      syncSchedule = pulumi.Input.asOptionalInput<String>(syncSchedule),
      syncTokenId = pulumi.Input.asInput<String>(syncTokenId),
      syncWindow = pulumi.Input.asOptionalInput<String>(syncWindow);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogEnabled': ?auditLogEnabled,
      'clientTokenIds': ?clientTokenIds,
      'containerRegistryId': containerRegistryId,
      'logLevel': ?logLevel,
      'mode': ?mode,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<ConnectedRegistryNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<ConnectedRegistryNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentRegistryId': ?parentRegistryId,
      'syncMessageTtl': ?syncMessageTtl,
      'syncSchedule': ?syncSchedule,
      'syncTokenId': syncTokenId,
      'syncWindow': ?syncWindow,
    };
  }

  factory ConnectedRegistryArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedRegistryArgs(
      auditLogEnabled: map['auditLogEnabled'] == null ? null : pulumi.Output.create<bool>(map['auditLogEnabled'] as bool),
      clientTokenIds: map['clientTokenIds'] == null ? null : pulumi.Output.create<List<String>>((map['clientTokenIds'] as List).cast<String>()),
      containerRegistryId: pulumi.Output.create<String>(map['containerRegistryId'] as String),
      logLevel: map['logLevel'] == null ? null : pulumi.Output.create<String>(map['logLevel'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<List<ConnectedRegistryNotification>>(pulumi.Input.decodeList<ConnectedRegistryNotification>(map['notifications'], (value) => ConnectedRegistryNotification.fromMap((value as Map).cast<String, dynamic>()))),
      parentRegistryId: map['parentRegistryId'] == null ? null : pulumi.Output.create<String>(map['parentRegistryId'] as String),
      syncMessageTtl: map['syncMessageTtl'] == null ? null : pulumi.Output.create<String>(map['syncMessageTtl'] as String),
      syncSchedule: map['syncSchedule'] == null ? null : pulumi.Output.create<String>(map['syncSchedule'] as String),
      syncTokenId: pulumi.Output.create<String>(map['syncTokenId'] as String),
      syncWindow: map['syncWindow'] == null ? null : pulumi.Output.create<String>(map['syncWindow'] as String),
    );
  }
}

