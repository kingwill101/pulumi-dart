// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_boxes_storage_box_access_settings.dart';
import 'get_storage_boxes_storage_box_snapshot_plan.dart';

class GetStorageBoxesStorageBox {
  /// Access settings of the Storage Box.
  final pulumi.Input<GetStorageBoxesStorageBoxAccessSettings> accessSettings;

  /// Whether delete protection is enabled.
  final pulumi.Input<bool> deleteProtection;

  /// ID of the Storage Box.
  final pulumi.Input<int> id;

  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;

  /// Name of the Location.
  final pulumi.Input<String> location;

  /// Name of the Storage Box.
  final pulumi.Input<String> name;

  /// FQDN of the Storage Box.
  final pulumi.Input<String> server;

  /// Details of the active snapshot plan.
  final pulumi.Input<GetStorageBoxesStorageBoxSnapshotPlan> snapshotPlan;

  /// Name of the Storage Box Type.
  final pulumi.Input<String> storageBoxType;

  /// Host system of the Storage Box.
  final pulumi.Input<String> system;

  /// Primary username of the Storage Box.
  final pulumi.Input<String> username;

  /// Creates a new [GetStorageBoxesStorageBox].
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
  GetStorageBoxesStorageBox({
    required this.accessSettings,
    required this.deleteProtection,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    required this.server,
    required this.snapshotPlan,
    required this.storageBoxType,
    required this.system,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings':
          pulumi.Input.mapInputValue<
            GetStorageBoxesStorageBoxAccessSettings,
            Map<String, dynamic>
          >(accessSettings, (value) => value.toMap()),
      'deleteProtection': deleteProtection,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'server': server,
      'snapshotPlan':
          pulumi.Input.mapInputValue<
            GetStorageBoxesStorageBoxSnapshotPlan,
            Map<String, dynamic>
          >(snapshotPlan, (value) => value.toMap()),
      'storageBoxType': storageBoxType,
      'system': system,
      'username': username,
    };
  }

  factory GetStorageBoxesStorageBox.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesStorageBox(
      accessSettings: pulumi.Input.fromValue(
        GetStorageBoxesStorageBoxAccessSettings.fromMap(
          (map['accessSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      deleteProtection: pulumi.Input.fromValue(map['deleteProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
      snapshotPlan: pulumi.Input.fromValue(
        GetStorageBoxesStorageBoxSnapshotPlan.fromMap(
          (map['snapshotPlan']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageBoxType: pulumi.Input.fromValue(map['storageBoxType'] as String),
      system: pulumi.Input.fromValue(map['system'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
