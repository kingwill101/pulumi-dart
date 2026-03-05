// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_box_snapshots_get_storage_box_snapshots_args_doc}
/// Arguments for getStorageBoxSnapshots.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_box_snapshots_get_storage_box_snapshots_args_doc}
class GetStorageBoxSnapshotsArgs {
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetStorageBoxSnapshotsArgs].
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetStorageBoxSnapshotsArgs({
    required this.storageBoxId,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxId': storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotsArgs(
      storageBoxId: pulumi.Input.fromValue(map['storageBoxId'] as int),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

