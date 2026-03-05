// ignore_for_file: unused_element, unnecessary_cast

import 'get_storage_box_access_settings.dart';
import 'get_storage_box_snapshot_plan.dart';

/// Result data returned by getStorageBox.
class GetStorageBoxResult {
  /// Access settings of the Storage Box.
  final GetStorageBoxAccessSettings accessSettings;
  /// Whether delete protection is enabled.
  final bool deleteProtection;
  /// ID of the Storage Box.
  final int? id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the Location.
  final String location;
  /// Name of the Storage Box.
  final String? name;
  /// FQDN of the Storage Box.
  final String server;
  /// Details of the active snapshot plan.
  final GetStorageBoxSnapshotPlan snapshotPlan;
  /// Name of the Storage Box Type.
  final String storageBoxType;
  /// Host system of the Storage Box.
  final String system;
  /// Primary username of the Storage Box.
  final String username;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final String? withSelector;

  /// Creates a new [GetStorageBoxResult].
  /// [accessSettings] Access settings of the Storage Box.
  /// [deleteProtection] Whether delete protection is enabled.
  /// [id] ID of the Storage Box.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [location] Name of the Location.
  /// [name] Name of the Storage Box.
  /// [server] FQDN of the Storage Box.
  /// [snapshotPlan] Details of the active snapshot plan.
  /// [storageBoxType] Name of the Storage Box Type.
  /// [system] Host system of the Storage Box.
  /// [username] Primary username of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  GetStorageBoxResult({
    required this.accessSettings,
    required this.deleteProtection,
    this.id,
    required this.labels,
    required this.location,
    this.name,
    required this.server,
    required this.snapshotPlan,
    required this.storageBoxType,
    required this.system,
    required this.username,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings': accessSettings.toMap(),
      'deleteProtection': deleteProtection,
      'id': ?id,
      'labels': labels,
      'location': location,
      'name': ?name,
      'server': server,
      'snapshotPlan': snapshotPlan.toMap(),
      'storageBoxType': storageBoxType,
      'system': system,
      'username': username,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxResult(
      accessSettings: GetStorageBoxAccessSettings.fromMap((map['accessSettings']! as Map).cast<String, dynamic>()),
      deleteProtection: map['deleteProtection'] as bool,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as int; })(),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      server: map['server'] as String,
      snapshotPlan: GetStorageBoxSnapshotPlan.fromMap((map['snapshotPlan']! as Map).cast<String, dynamic>()),
      storageBoxType: map['storageBoxType'] as String,
      system: map['system'] as String,
      username: map['username'] as String,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

