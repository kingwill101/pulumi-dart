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
    pulumi.Output<StorageBoxSubaccountAccessSettings>? accessSettings,
    pulumi.Output<String>? description,
    pulumi.Output<String>? homeDirectory,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? server,
    pulumi.Output<int>? storageBoxId,
    pulumi.Output<String>? username,
  }) :
      accessSettings = pulumi.Input.asOptionalInput<StorageBoxSubaccountAccessSettings>(accessSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      homeDirectory = pulumi.Input.asOptionalInput<String>(homeDirectory),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      server = pulumi.Input.asOptionalInput<String>(server),
      storageBoxId = pulumi.Input.asOptionalInput<int>(storageBoxId),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      accessSettings: map['accessSettings'] == null ? null : pulumi.Output.create<StorageBoxSubaccountAccessSettings>(StorageBoxSubaccountAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      homeDirectory: map['homeDirectory'] == null ? null : pulumi.Output.create<String>(map['homeDirectory'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      server: map['server'] == null ? null : pulumi.Output.create<String>(map['server'] as String),
      storageBoxId: map['storageBoxId'] == null ? null : pulumi.Output.create<int>(map['storageBoxId'] as int),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

