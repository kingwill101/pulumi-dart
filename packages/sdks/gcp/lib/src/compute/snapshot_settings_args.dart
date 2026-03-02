// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_settings_storage_location.dart';

/// {@template pulumi_compute_snapshot_settings_snapshot_settings_args_doc}
/// The set of arguments for SnapshotSettings.
/// {@endtemplate}
/// {@macro pulumi_compute_snapshot_settings_snapshot_settings_args_doc}
class SnapshotSettingsArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Policy of which storage location is going to be resolved, and additional data
  /// that particularizes how the policy is going to be carried out
  /// Structure is documented below.
  final pulumi.Input<SnapshotSettingsStorageLocation> storageLocation;

  /// Creates a new [SnapshotSettingsArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [storageLocation] Policy of which storage location is going to be resolved, and additional data
  SnapshotSettingsArgs({
    this.project,
    required this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'storageLocation': pulumi.Input.mapInputValue<SnapshotSettingsStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
    };
  }

  factory SnapshotSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotSettingsArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      storageLocation: (SnapshotSettingsStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

