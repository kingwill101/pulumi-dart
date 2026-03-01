// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_subaccount_access_settings.dart';

/// {@template pulumi_index_storage_box_subaccount_storage_box_subaccount_args_doc}
/// The set of arguments for StorageBoxSubaccount.
/// {@endtemplate}
/// {@macro pulumi_index_storage_box_subaccount_storage_box_subaccount_args_doc}
class StorageBoxSubaccountArgs {
  /// Access settings for the Subaccount.
  final pulumi.Input<StorageBoxSubaccountAccessSettings>? accessSettings;
  /// A description of the Storage Box Subaccount.
  final pulumi.Input<String>? description;
  /// Home directory of the Storage Box Subaccount. The directory will be created if it doesn't exist yet. Must not include a leading slash (`/`).
  final pulumi.Input<String> homeDirectory;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Storage Box Subaccount.
  final pulumi.Input<String>? name;
  /// Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  final pulumi.Input<String> password;
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;

  /// Creates a new [StorageBoxSubaccountArgs].
  /// [accessSettings] Access settings for the Subaccount.
  /// [description] A description of the Storage Box Subaccount.
  /// [homeDirectory] Home directory of the Storage Box Subaccount. The directory will be created if it doesn't exist yet. Must not include a leading slash (`/`).
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Subaccount.
  /// [password] Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  /// [storageBoxId] ID of the Storage Box.
  StorageBoxSubaccountArgs({
    pulumi.Output<StorageBoxSubaccountAccessSettings>? accessSettings,
    pulumi.Output<String>? description,
    required pulumi.Output<String> homeDirectory,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    required pulumi.Output<String> password,
    required pulumi.Output<int> storageBoxId,
  }) :
      accessSettings = pulumi.Input.asOptionalInput<StorageBoxSubaccountAccessSettings>(accessSettings),
      description = pulumi.Input.asOptionalInput<String>(description),
      homeDirectory = pulumi.Input.asInput<String>(homeDirectory),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      storageBoxId = pulumi.Input.asInput<int>(storageBoxId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?pulumi.Input.mapOptionalInputValue<StorageBoxSubaccountAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'description': ?description,
      'homeDirectory': homeDirectory,
      'labels': ?labels,
      'name': ?name,
      'password': password,
      'storageBoxId': storageBoxId,
    };
  }

  factory StorageBoxSubaccountArgs.fromMap(Map<String, dynamic> map) {
    return StorageBoxSubaccountArgs(
      accessSettings: map['accessSettings'] == null ? null : pulumi.Output.create<StorageBoxSubaccountAccessSettings>(StorageBoxSubaccountAccessSettings.fromMap((map['accessSettings'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      homeDirectory: pulumi.Output.create<String>(map['homeDirectory'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      storageBoxId: pulumi.Output.create<int>(map['storageBoxId'] as int),
    );
  }
}

