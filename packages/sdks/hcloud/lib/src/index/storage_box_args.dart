// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_access_settings.dart';
import 'storage_box_snapshot_plan.dart';

/// {@template pulumi_index_storage_box_storage_box_args_doc}
/// The set of arguments for StorageBox.
/// {@endtemplate}
/// {@macro pulumi_index_storage_box_storage_box_args_doc}
class StorageBoxArgs {
  /// Access settings of the Storage Box.
  final pulumi.Input<StorageBoxAccessSettings>? accessSettings;
  /// Prevent the Storage Box from being accidentally deleted outside of Terraform.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Location.
  final pulumi.Input<String> location;
  /// Name of the Storage Box.
  final pulumi.Input<String>? name;
  /// Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  final pulumi.Input<String> password;
  /// Details of the active snapshot plan.
  final pulumi.Input<StorageBoxSnapshotPlan>? snapshotPlan;
  /// SSH public keys in OpenSSH format to inject into the Storage Box. It is not possible to update the SSH Keys through the API, so changing this attribute forces a replace of the Storage Box.
  final pulumi.Input<List<String>>? sshKeys;
  /// Name of the Storage Box Type.
  final pulumi.Input<String> storageBoxType;

  /// Creates a new [StorageBoxArgs].
  /// [accessSettings] Access settings of the Storage Box.
  /// [deleteProtection] Prevent the Storage Box from being accidentally deleted outside of Terraform.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location.
  /// [name] Name of the Storage Box.
  /// [password] Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  /// [snapshotPlan] Details of the active snapshot plan.
  /// [sshKeys] SSH public keys in OpenSSH format to inject into the Storage Box. It is not possible to update the SSH Keys through the API, so changing this attribute forces a replace of the Storage Box.
  /// [storageBoxType] Name of the Storage Box Type.
  StorageBoxArgs({
    this.accessSettings,
    this.deleteProtection,
    this.labels,
    required this.location,
    this.name,
    required this.password,
    this.snapshotPlan,
    this.sshKeys,
    required this.storageBoxType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<StorageBoxAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'password': password,
      'snapshotPlan': ?pulumi.Input.mapOptionalInputValue<StorageBoxSnapshotPlan, Map<String, dynamic>>(snapshotPlan, (value) => value.toMap()),
      'sshKeys': ?sshKeys,
      'storageBoxType': storageBoxType,
    };
  }

  factory StorageBoxArgs.fromMap(Map<String, dynamic> map) {
    return StorageBoxArgs(
      accessSettings: map['accessSettings'] == null ? null : (StorageBoxAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>())).input(),
      deleteProtection: map['deleteProtection'] == null ? null : (map['deleteProtection'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: (map['password'] as String).input(),
      snapshotPlan: map['snapshotPlan'] == null ? null : (StorageBoxSnapshotPlan.fromMap((map['snapshotPlan'] as Map).cast<String, dynamic>())).input(),
      sshKeys: map['sshKeys'] == null ? null : ((map['sshKeys'] as List).cast<String>()).input(),
      storageBoxType: (map['storageBoxType'] as String).input(),
    );
  }
}

