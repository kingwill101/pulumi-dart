// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_access_settings.dart';
import 'storage_box_snapshot_plan.dart';

/// Input properties used for looking up and filtering StorageBox resources.
class StorageBoxState {
  /// Access settings of the Storage Box.
  final pulumi.Input<StorageBoxAccessSettings>? accessSettings;
  /// Prevent the Storage Box from being accidentally deleted outside of Terraform.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Location.
  final pulumi.Input<String>? location;
  /// Name of the Storage Box.
  final pulumi.Input<String>? name;
  /// Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  final pulumi.Input<String>? password;
  /// FQDN of the Storage Box.
  final pulumi.Input<String>? server;
  /// Details of the active snapshot plan.
  final pulumi.Input<StorageBoxSnapshotPlan>? snapshotPlan;
  /// SSH public keys in OpenSSH format to inject into the Storage Box. It is not possible to update the SSH Keys through the API, so changing this attribute forces a replace of the Storage Box.
  final pulumi.Input<List<String>>? sshKeys;
  /// Name of the Storage Box Type.
  final pulumi.Input<String>? storageBoxType;
  /// Host system of the Storage Box.
  final pulumi.Input<String>? system;
  /// Primary username of the Storage Box.
  final pulumi.Input<String>? username;

  /// Creates a new [StorageBoxState].
  /// [accessSettings] Access settings of the Storage Box.
  /// [deleteProtection] Prevent the Storage Box from being accidentally deleted outside of Terraform.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location.
  /// [name] Name of the Storage Box.
  /// [password] Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  /// [server] FQDN of the Storage Box.
  /// [snapshotPlan] Details of the active snapshot plan.
  /// [sshKeys] SSH public keys in OpenSSH format to inject into the Storage Box. It is not possible to update the SSH Keys through the API, so changing this attribute forces a replace of the Storage Box.
  /// [storageBoxType] Name of the Storage Box Type.
  /// [system] Host system of the Storage Box.
  /// [username] Primary username of the Storage Box.
  StorageBoxState({
    pulumi.Output<StorageBoxAccessSettings>? accessSettings,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? server,
    pulumi.Output<StorageBoxSnapshotPlan>? snapshotPlan,
    pulumi.Output<List<String>>? sshKeys,
    pulumi.Output<String>? storageBoxType,
    pulumi.Output<String>? system,
    pulumi.Output<String>? username,
  }) :
      accessSettings = pulumi.Input.asOptionalInput<StorageBoxAccessSettings>(accessSettings),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      server = pulumi.Input.asOptionalInput<String>(server),
      snapshotPlan = pulumi.Input.asOptionalInput<StorageBoxSnapshotPlan>(snapshotPlan),
      sshKeys = pulumi.Input.asOptionalInput<List<String>>(sshKeys),
      storageBoxType = pulumi.Input.asOptionalInput<String>(storageBoxType),
      system = pulumi.Input.asOptionalInput<String>(system),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<StorageBoxAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'server': ?server,
      'snapshotPlan': ?pulumi.Input.mapOptionalInputValue<StorageBoxSnapshotPlan, Map<String, dynamic>>(snapshotPlan, (value) => value.toMap()),
      'sshKeys': ?sshKeys,
      'storageBoxType': ?storageBoxType,
      'system': ?system,
      'username': ?username,
    };
  }

  factory StorageBoxState.fromMap(Map<String, dynamic> map) {
    return StorageBoxState(
      accessSettings: map['accessSettings'] == null ? null : pulumi.Output.create<StorageBoxAccessSettings>(StorageBoxAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      server: map['server'] == null ? null : pulumi.Output.create<String>(map['server'] as String),
      snapshotPlan: map['snapshotPlan'] == null ? null : pulumi.Output.create<StorageBoxSnapshotPlan>(StorageBoxSnapshotPlan.fromMap((map['snapshotPlan'] as Map).cast<String, dynamic>())),
      sshKeys: map['sshKeys'] == null ? null : pulumi.Output.create<List<String>>((map['sshKeys'] as List).cast<String>()),
      storageBoxType: map['storageBoxType'] == null ? null : pulumi.Output.create<String>(map['storageBoxType'] as String),
      system: map['system'] == null ? null : pulumi.Output.create<String>(map['system'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

