// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_encryption_settings.dart';

/// {@template pulumi_compute_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// Indicates how the snapshot is to be created. Possible values are `Copy` or `Import`.
  ///
  /// &gt; **Note:** One of `sourceUri`, `sourceResourceId` or `storageAccountId` must be specified.
  final pulumi.Input<String> createOption;
  /// Specifies the ID of the Disk Access which should be used for this Snapshot. This is used in conjunction with setting `networkAccessPolicy` to `AllowPrivate`.
  final pulumi.Input<String?>? diskAccessId;
  /// The size of the Snapshotted Disk in GB.
  final pulumi.Input<int?>? diskSizeGb;
  /// A `encryptionSettings` block as defined below.
  ///
  /// &gt; **Note:** Removing `encryptionSettings` forces a new resource to be created.
  final pulumi.Input<SnapshotEncryptionSettings?>? encryptionSettings;
  /// Specifies if the Snapshot is incremental. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? incrementalEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Snapshot resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Policy for accessing the disk via network. Possible values are `AllowAll`, `AllowPrivate`, or `DenyAll`. Defaults to `AllowAll`.
  final pulumi.Input<String?>? networkAccessPolicy;
  /// Policy for controlling export on the disk. Possible values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies a reference to an existing snapshot, when `createOption` is `Copy`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceResourceId;
  /// Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceUri;
  /// Specifies the ID of an storage account. Used with `sourceUri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? storageAccountId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SnapshotArgs].
  /// [createOption] Indicates how the snapshot is to be created. Possible values are `Copy` or `Import`.
  /// [diskAccessId] Specifies the ID of the Disk Access which should be used for this Snapshot. This is used in conjunction with setting `networkAccessPolicy` to `AllowPrivate`.
  /// [diskSizeGb] The size of the Snapshotted Disk in GB.
  /// [encryptionSettings] A `encryptionSettings` block as defined below.
  /// [incrementalEnabled] Specifies if the Snapshot is incremental. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Snapshot resource. Changing this forces a new resource to be created.
  /// [networkAccessPolicy] Policy for accessing the disk via network. Possible values are `AllowAll`, `AllowPrivate`, or `DenyAll`. Defaults to `AllowAll`.
  /// [publicNetworkAccessEnabled] Policy for controlling export on the disk. Possible values are `true` or `false`. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
  /// [sourceResourceId] Specifies a reference to an existing snapshot, when `createOption` is `Copy`. Changing this forces a new resource to be created.
  /// [sourceUri] Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
  /// [storageAccountId] Specifies the ID of an storage account. Used with `sourceUri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const SnapshotArgs({
    required this.createOption,
    this.diskAccessId,
    this.diskSizeGb,
    this.encryptionSettings,
    this.incrementalEnabled,
    this.location,
    this.name,
    this.networkAccessPolicy,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.sourceResourceId,
    this.sourceUri,
    this.storageAccountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'diskAccessId': ?diskAccessId,
      'diskSizeGb': ?diskSizeGb,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<SnapshotEncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'incrementalEnabled': ?incrementalEnabled,
      'location': ?location,
      'name': ?name,
      'networkAccessPolicy': ?networkAccessPolicy,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sourceResourceId': ?sourceResourceId,
      'sourceUri': ?sourceUri,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      diskAccessId: (() { final guardedValue = map['diskAccessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incrementalEnabled: (() { final guardedValue = map['incrementalEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAccessPolicy: (() { final guardedValue = map['networkAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
