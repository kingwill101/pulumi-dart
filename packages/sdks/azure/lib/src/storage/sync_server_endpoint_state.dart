// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SyncServerEndpoint resources.
class SyncServerEndpointState {
  /// Is Cloud Tiering Enabled? Defaults to `false`.
  final pulumi.Input<bool>? cloudTieringEnabled;
  /// Specifies how the server initially downloads the Azure file share data. Valid Values includes `NamespaceThenModifiedFiles`, `NamespaceOnly`, and `AvoidTieredFiles`. Defaults to `NamespaceThenModifiedFiles`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? initialDownloadPolicy;
  /// Specifies how to handle the local cache. Valid Values include `UpdateLocallyCachedFiles` and `DownloadNewAndModifiedFiles`. Defaults to `UpdateLocallyCachedFiles`.
  final pulumi.Input<String>? localCacheMode;
  /// The name which should be used for this Storage Sync. Changing this forces a new Storage Sync Server Endpoint to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Registered Server that will be associate with the Storage Sync Server Endpoint. Changing this forces a new Storage Sync Server Endpoint to be created.
  ///
  /// > **Note:** The target server must already be registered with the parent `azure.storage.Sync` prior to creating this endpoint. For more information on registering a server see the [Microsoft documentation](https://learn.microsoft.com/azure/storage/file-sync/file-sync-server-registration)
  final pulumi.Input<String>? registeredServerId;
  /// The path on the Windows Server to be synced to the Azure file share. Changing this forces a new Storage Sync Server Endpoint to be created.
  final pulumi.Input<String>? serverLocalPath;
  /// The ID of the Storage Sync Group where the Storage Sync Server Endpoint should exist. Changing this forces a new Storage Sync Server Endpoint to be created.
  final pulumi.Input<String>? storageSyncGroupId;
  /// Files older than the specified age will be tiered to the cloud.
  final pulumi.Input<int>? tierFilesOlderThanDays;
  /// What percentage of free space on the volume should be preserved? Defaults to `20`.
  final pulumi.Input<int>? volumeFreeSpacePercent;

  /// Creates a new [SyncServerEndpointState].
  /// [cloudTieringEnabled] Is Cloud Tiering Enabled? Defaults to `false`.
  /// [initialDownloadPolicy] Specifies how the server initially downloads the Azure file share data. Valid Values includes `NamespaceThenModifiedFiles`, `NamespaceOnly`, and `AvoidTieredFiles`. Defaults to `NamespaceThenModifiedFiles`. Changing this forces a new resource to be created.
  /// [localCacheMode] Specifies how to handle the local cache. Valid Values include `UpdateLocallyCachedFiles` and `DownloadNewAndModifiedFiles`. Defaults to `UpdateLocallyCachedFiles`.
  /// [name] The name which should be used for this Storage Sync. Changing this forces a new Storage Sync Server Endpoint to be created.
  /// [registeredServerId] The ID of the Registered Server that will be associate with the Storage Sync Server Endpoint. Changing this forces a new Storage Sync Server Endpoint to be created.
  /// [serverLocalPath] The path on the Windows Server to be synced to the Azure file share. Changing this forces a new Storage Sync Server Endpoint to be created.
  /// [storageSyncGroupId] The ID of the Storage Sync Group where the Storage Sync Server Endpoint should exist. Changing this forces a new Storage Sync Server Endpoint to be created.
  /// [tierFilesOlderThanDays] Files older than the specified age will be tiered to the cloud.
  /// [volumeFreeSpacePercent] What percentage of free space on the volume should be preserved? Defaults to `20`.
  SyncServerEndpointState({
    pulumi.Output<bool>? cloudTieringEnabled,
    pulumi.Output<String>? initialDownloadPolicy,
    pulumi.Output<String>? localCacheMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? registeredServerId,
    pulumi.Output<String>? serverLocalPath,
    pulumi.Output<String>? storageSyncGroupId,
    pulumi.Output<int>? tierFilesOlderThanDays,
    pulumi.Output<int>? volumeFreeSpacePercent,
  }) :
      cloudTieringEnabled = pulumi.Input.asOptionalInput<bool>(cloudTieringEnabled),
      initialDownloadPolicy = pulumi.Input.asOptionalInput<String>(initialDownloadPolicy),
      localCacheMode = pulumi.Input.asOptionalInput<String>(localCacheMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      registeredServerId = pulumi.Input.asOptionalInput<String>(registeredServerId),
      serverLocalPath = pulumi.Input.asOptionalInput<String>(serverLocalPath),
      storageSyncGroupId = pulumi.Input.asOptionalInput<String>(storageSyncGroupId),
      tierFilesOlderThanDays = pulumi.Input.asOptionalInput<int>(tierFilesOlderThanDays),
      volumeFreeSpacePercent = pulumi.Input.asOptionalInput<int>(volumeFreeSpacePercent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudTieringEnabled': ?cloudTieringEnabled,
      'initialDownloadPolicy': ?initialDownloadPolicy,
      'localCacheMode': ?localCacheMode,
      'name': ?name,
      'registeredServerId': ?registeredServerId,
      'serverLocalPath': ?serverLocalPath,
      'storageSyncGroupId': ?storageSyncGroupId,
      'tierFilesOlderThanDays': ?tierFilesOlderThanDays,
      'volumeFreeSpacePercent': ?volumeFreeSpacePercent,
    };
  }

  factory SyncServerEndpointState.fromMap(Map<String, dynamic> map) {
    return SyncServerEndpointState(
      cloudTieringEnabled: map['cloudTieringEnabled'] == null ? null : pulumi.Output.create<bool>(map['cloudTieringEnabled'] as bool),
      initialDownloadPolicy: map['initialDownloadPolicy'] == null ? null : pulumi.Output.create<String>(map['initialDownloadPolicy'] as String),
      localCacheMode: map['localCacheMode'] == null ? null : pulumi.Output.create<String>(map['localCacheMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      registeredServerId: map['registeredServerId'] == null ? null : pulumi.Output.create<String>(map['registeredServerId'] as String),
      serverLocalPath: map['serverLocalPath'] == null ? null : pulumi.Output.create<String>(map['serverLocalPath'] as String),
      storageSyncGroupId: map['storageSyncGroupId'] == null ? null : pulumi.Output.create<String>(map['storageSyncGroupId'] as String),
      tierFilesOlderThanDays: map['tierFilesOlderThanDays'] == null ? null : pulumi.Output.create<int>(map['tierFilesOlderThanDays'] as int),
      volumeFreeSpacePercent: map['volumeFreeSpacePercent'] == null ? null : pulumi.Output.create<int>(map['volumeFreeSpacePercent'] as int),
    );
  }
}

