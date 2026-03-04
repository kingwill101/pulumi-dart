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
    this.accessSettings,
    this.deleteProtection,
    this.labels,
    this.location,
    this.name,
    this.password,
    this.server,
    this.snapshotPlan,
    this.sshKeys,
    this.storageBoxType,
    this.system,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StorageBoxAccessSettings,
            Map<String, dynamic>
          >(accessSettings, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'server': ?server,
      'snapshotPlan':
          ?pulumi.Input.mapOptionalInputValue<
            StorageBoxSnapshotPlan,
            Map<String, dynamic>
          >(snapshotPlan, (value) => value.toMap()),
      'sshKeys': ?sshKeys,
      'storageBoxType': ?storageBoxType,
      'system': ?system,
      'username': ?username,
    };
  }

  factory StorageBoxState.fromMap(Map<String, dynamic> map) {
    return StorageBoxState(
      accessSettings: (() {
        final guardedValue = map['accessSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageBoxAccessSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteProtection: (() {
        final guardedValue = map['deleteProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotPlan: (() {
        final guardedValue = map['snapshotPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageBoxSnapshotPlan.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sshKeys: (() {
        final guardedValue = map['sshKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      storageBoxType: (() {
        final guardedValue = map['storageBoxType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      system: (() {
        final guardedValue = map['system'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
