// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_settings_storage_location.dart';

/// Input properties used for looking up and filtering SnapshotSettings resources.
class SnapshotSettingsState {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Policy of which storage location is going to be resolved, and additional data
  /// that particularizes how the policy is going to be carried out
  /// Structure is documented below.
  final pulumi.Input<SnapshotSettingsStorageLocation>? storageLocation;

  /// Creates a new [SnapshotSettingsState].
  /// [project] The ID of the project in which the resource belongs.
  /// [storageLocation] Policy of which storage location is going to be resolved, and additional data
  SnapshotSettingsState({
    pulumi.Output<String>? project,
    pulumi.Output<SnapshotSettingsStorageLocation>? storageLocation,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      storageLocation = pulumi.Input.asOptionalInput<SnapshotSettingsStorageLocation>(storageLocation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<SnapshotSettingsStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
    };
  }

  factory SnapshotSettingsState.fromMap(Map<String, dynamic> map) {
    return SnapshotSettingsState(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<SnapshotSettingsStorageLocation>(SnapshotSettingsStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())),
    );
  }
}

