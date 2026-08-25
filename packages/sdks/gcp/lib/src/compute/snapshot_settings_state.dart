// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_settings_storage_location.dart';

/// Input properties used for looking up and filtering SnapshotSettings resources.
class SnapshotSettingsState {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Policy of which storage location is going to be resolved, and additional data
  /// that particularizes how the policy is going to be carried out
  /// Structure is documented below.
  final pulumi.Input<SnapshotSettingsStorageLocation?>? storageLocation;

  /// Creates a new [SnapshotSettingsState].
  /// [project] The ID of the project in which the resource belongs.
  /// [storageLocation] Policy of which storage location is going to be resolved, and additional data
  const SnapshotSettingsState({
    this.project,
    this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<SnapshotSettingsStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
    };
  }

  factory SnapshotSettingsState.fromMap(Map<String, dynamic> map) {
    return SnapshotSettingsState(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageLocation: (() { final guardedValue = map['storageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotSettingsStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
