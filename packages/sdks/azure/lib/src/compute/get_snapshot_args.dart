// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_snapshot_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_get_snapshot_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// Specifies the name of the Snapshot.
  final pulumi.Input<String> name;

  /// Specifies the name of the resource group the Snapshot is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSnapshotArgs].
  /// [name] Specifies the name of the Snapshot.
  /// [resourceGroupName] Specifies the name of the resource group the Snapshot is located in.
  GetSnapshotArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
