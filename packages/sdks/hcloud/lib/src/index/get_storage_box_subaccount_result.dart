// ignore_for_file: unused_element, unnecessary_cast

import 'get_storage_box_subaccount_access_settings.dart';

/// Result data returned by getStorageBoxSubaccount.
class GetStorageBoxSubaccountResult {
  /// Access settings for the Subaccount.
  final GetStorageBoxSubaccountAccessSettings? accessSettings;
  /// Description of the Storage Box Subaccount.
  final String? description;
  /// Home directory of the Storage Box Subaccount.
  final String? homeDirectory;
  /// ID of the Storage Box Subaccount.
  final int? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Name of the Storage Box Subaccount.
  final String? name;
  /// FQDN of the Storage Box Subaccount.
  final String? server;
  /// ID of the Storage Box.
  final int? storageBoxId;
  /// Username of the Storage Box Subaccount.
  final String? username;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final String? withSelector;

  /// Creates a new [GetStorageBoxSubaccountResult].
  /// [accessSettings] Access settings for the Subaccount.
  /// [description] Description of the Storage Box Subaccount.
  /// [homeDirectory] Home directory of the Storage Box Subaccount.
  /// [id] ID of the Storage Box Subaccount.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Storage Box Subaccount.
  /// [server] FQDN of the Storage Box Subaccount.
  /// [storageBoxId] ID of the Storage Box.
  /// [username] Username of the Storage Box Subaccount.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  const GetStorageBoxSubaccountResult({
    this.accessSettings,
    this.description,
    this.homeDirectory,
    this.id,
    this.labels,
    this.name,
    this.server,
    this.storageBoxId,
    this.username,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': ?accessSettings?.toMap(),
      'description': ?description,
      'homeDirectory': ?homeDirectory,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'server': ?server,
      'storageBoxId': ?storageBoxId,
      'username': ?username,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSubaccountResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountResult(
      accessSettings: (() { final guardedValue = map['accessSettings']; if (guardedValue == null) return null; return GetStorageBoxSubaccountAccessSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      homeDirectory: (() { final guardedValue = map['homeDirectory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageBoxId: (() { final guardedValue = map['storageBoxId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
