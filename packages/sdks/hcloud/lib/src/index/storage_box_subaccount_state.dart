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
  StorageBoxSubaccountState({
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
      accessSettings: map['accessSettings'] == null ? null : (StorageBoxSubaccountAccessSettings.fromMap((map['accessSettings']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      homeDirectory: map['homeDirectory'] == null ? null : (map['homeDirectory']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      server: map['server'] == null ? null : (map['server']! as String).input(),
      storageBoxId: map['storageBoxId'] == null ? null : (map['storageBoxId']! as int).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

