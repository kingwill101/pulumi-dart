// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_subaccount_access_settings.dart';

/// Input properties used for looking up and filtering StorageBoxSubaccount resources.
class StorageBoxSubaccountState {
  /// Access settings for the Subaccount.
  final pulumi.Input<StorageBoxSubaccountAccessSettings>? accessSettings;
  /// A description of the Storage Box Subaccount.
  final pulumi.Input<String>? description;
  /// Home directory of the Storage Box Subaccount. The directory will be created if it doesn't exist yet. Must not include a leading slash (`/`).
  final pulumi.Input<String>? homeDirectory;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Storage Box Subaccount.
  final pulumi.Input<String>? name;
  /// Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  final pulumi.Input<String>? password;
  /// FQDN of the Storage Box Subaccount.
  final pulumi.Input<String>? server;
  /// ID of the Storage Box.
  final pulumi.Input<int>? storageBoxId;
  /// Username of the Storage Box Subaccount.
  final pulumi.Input<String>? username;

  /// Creates a new [StorageBoxSubaccountState].
  /// [accessSettings] Access settings for the Subaccount.
  /// [description] A description of the Storage Box Subaccount.
  /// [homeDirectory] Home directory of the Storage Box Subaccount. The directory will be created if it doesn't exist yet. Must not include a leading slash (`/`).
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Subaccount.
  /// [password] Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  /// [server] FQDN of the Storage Box Subaccount.
  /// [storageBoxId] ID of the Storage Box.
  /// [username] Username of the Storage Box Subaccount.
  const StorageBoxSubaccountState({
    this.accessSettings,
    this.description,
    this.homeDirectory,
    this.labels,
    this.name,
    this.password,
    this.server,
    this.storageBoxId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<StorageBoxSubaccountAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'description': ?description,
      'homeDirectory': ?homeDirectory,
      'labels': ?labels,
      'name': ?name,
      'password': ?password,
      'server': ?server,
      'storageBoxId': ?storageBoxId,
      'username': ?username,
    };
  }

  factory StorageBoxSubaccountState.fromMap(Map<String, dynamic> map) {
    return StorageBoxSubaccountState(
      accessSettings: (() { final guardedValue = map['accessSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageBoxSubaccountAccessSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeDirectory: (() { final guardedValue = map['homeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBoxId: (() { final guardedValue = map['storageBoxId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

