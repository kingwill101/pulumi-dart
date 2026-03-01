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
  /// > **Note:** One of `source_uri`, `source_resource_id` or `storage_account_id` must be specified.
  final pulumi.Input<String> createOption;
  /// Specifies the ID of the Disk Access which should be used for this Snapshot. This is used in conjunction with setting `network_access_policy` to `AllowPrivate`.
  final pulumi.Input<String>? diskAccessId;
  /// The size of the Snapshotted Disk in GB.
  final pulumi.Input<int>? diskSizeGb;
  /// A `encryption_settings` block as defined below.
  ///
  /// > **Note:** Removing `encryption_settings` forces a new resource to be created.
  final pulumi.Input<SnapshotEncryptionSettings>? encryptionSettings;
  /// Specifies if the Snapshot is incremental. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? incrementalEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Snapshot resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Policy for accessing the disk via network. Possible values are `AllowAll`, `AllowPrivate`, or `DenyAll`. Defaults to `AllowAll`.
  final pulumi.Input<String>? networkAccessPolicy;
  /// Policy for controlling export on the disk. Possible values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies a reference to an existing snapshot, when `create_option` is `Copy`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceResourceId;
  /// Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceUri;
  /// Specifies the ID of an storage account. Used with `source_uri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SnapshotArgs].
  /// [createOption] Indicates how the snapshot is to be created. Possible values are `Copy` or `Import`.
  /// [diskAccessId] Specifies the ID of the Disk Access which should be used for this Snapshot. This is used in conjunction with setting `network_access_policy` to `AllowPrivate`.
  /// [diskSizeGb] The size of the Snapshotted Disk in GB.
  /// [encryptionSettings] A `encryption_settings` block as defined below.
  /// [incrementalEnabled] Specifies if the Snapshot is incremental. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Snapshot resource. Changing this forces a new resource to be created.
  /// [networkAccessPolicy] Policy for accessing the disk via network. Possible values are `AllowAll`, `AllowPrivate`, or `DenyAll`. Defaults to `AllowAll`.
  /// [publicNetworkAccessEnabled] Policy for controlling export on the disk. Possible values are `true` or `false`. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Snapshot. Changing this forces a new resource to be created.
  /// [sourceResourceId] Specifies a reference to an existing snapshot, when `create_option` is `Copy`. Changing this forces a new resource to be created.
  /// [sourceUri] Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created.
  /// [storageAccountId] Specifies the ID of an storage account. Used with `source_uri` to allow authorization during import of unmanaged blobs from a different subscription. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  SnapshotArgs({
    required pulumi.Output<String> createOption,
    pulumi.Output<String>? diskAccessId,
    pulumi.Output<int>? diskSizeGb,
    pulumi.Output<SnapshotEncryptionSettings>? encryptionSettings,
    pulumi.Output<bool>? incrementalEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkAccessPolicy,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<String>? sourceUri,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createOption = pulumi.Input.asInput<String>(createOption),
      diskAccessId = pulumi.Input.asOptionalInput<String>(diskAccessId),
      diskSizeGb = pulumi.Input.asOptionalInput<int>(diskSizeGb),
      encryptionSettings = pulumi.Input.asOptionalInput<SnapshotEncryptionSettings>(encryptionSettings),
      incrementalEnabled = pulumi.Input.asOptionalInput<bool>(incrementalEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAccessPolicy = pulumi.Input.asOptionalInput<String>(networkAccessPolicy),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      sourceUri = pulumi.Input.asOptionalInput<String>(sourceUri),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createOption: pulumi.Output.create<String>(map['createOption'] as String),
      diskAccessId: map['diskAccessId'] == null ? null : pulumi.Output.create<String>(map['diskAccessId'] as String),
      diskSizeGb: map['diskSizeGb'] == null ? null : pulumi.Output.create<int>(map['diskSizeGb'] as int),
      encryptionSettings: map['encryptionSettings'] == null ? null : pulumi.Output.create<SnapshotEncryptionSettings>(SnapshotEncryptionSettings.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>())),
      incrementalEnabled: map['incrementalEnabled'] == null ? null : pulumi.Output.create<bool>(map['incrementalEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAccessPolicy: map['networkAccessPolicy'] == null ? null : pulumi.Output.create<String>(map['networkAccessPolicy'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      sourceUri: map['sourceUri'] == null ? null : pulumi.Output.create<String>(map['sourceUri'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

