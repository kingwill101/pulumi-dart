// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_snapshots_snapshot.dart';

/// Result data returned by getStorageBoxSnapshots.
class GetStorageBoxSnapshotsResult {
  final List<GetStorageBoxSnapshotsSnapshot> snapshots;
  /// ID of the Storage Box.
  final int storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxSnapshotsResult].
  /// [snapshots] Required.
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetStorageBoxSnapshotsResult({
    required this.snapshots,
    required this.storageBoxId,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshots': pulumi.Input.encodeList<GetStorageBoxSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'storageBoxId': storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotsResult(
      snapshots: pulumi.Input.decodeList<GetStorageBoxSnapshotsSnapshot>(map['snapshots']!, (value) => GetStorageBoxSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      storageBoxId: map['storageBoxId'] as int,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
