// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_subaccounts_subaccount_access_settings.dart';

class GetStorageBoxSubaccountsSubaccount {
  /// Access settings for the Subaccount.
  final pulumi.Input<GetStorageBoxSubaccountsSubaccountAccessSettings> accessSettings;
  /// Description of the Storage Box Subaccount.
  final pulumi.Input<String> description;
  /// Home directory of the Storage Box Subaccount.
  final pulumi.Input<String> homeDirectory;
  /// ID of the Storage Box Subaccount.
  final pulumi.Input<int> id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the Storage Box Subaccount.
  final pulumi.Input<String> name;
  /// FQDN of the Storage Box Subaccount.
  final pulumi.Input<String> server;
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;
  /// Username of the Storage Box Subaccount.
  final pulumi.Input<String> username;

  /// Creates a new [GetStorageBoxSubaccountsSubaccount].
  /// [accessSettings] Access settings for the Subaccount.
  /// [description] Description of the Storage Box Subaccount.
  /// [homeDirectory] Home directory of the Storage Box Subaccount.
  /// [id] ID of the Storage Box Subaccount.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Subaccount.
  /// [server] FQDN of the Storage Box Subaccount.
  /// [storageBoxId] ID of the Storage Box.
  /// [username] Username of the Storage Box Subaccount.
  GetStorageBoxSubaccountsSubaccount({
    required this.accessSettings,
    required this.description,
    required this.homeDirectory,
    required this.id,
    required this.labels,
    required this.name,
    required this.server,
    required this.storageBoxId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': pulumi.Input.mapInputValue<GetStorageBoxSubaccountsSubaccountAccessSettings, Map<String, dynamic>>(accessSettings, (value) => value.toMap()),
      'description': description,
      'homeDirectory': homeDirectory,
      'id': id,
      'labels': labels,
      'name': name,
      'server': server,
      'storageBoxId': storageBoxId,
      'username': username,
    };
  }

  factory GetStorageBoxSubaccountsSubaccount.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsSubaccount(
      accessSettings: pulumi.Input.fromValue(GetStorageBoxSubaccountsSubaccountAccessSettings.fromMap((map['accessSettings']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      homeDirectory: pulumi.Input.fromValue(map['homeDirectory'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
      storageBoxId: pulumi.Input.fromValue(map['storageBoxId'] as int),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

