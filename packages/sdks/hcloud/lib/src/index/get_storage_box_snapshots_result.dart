// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_snapshots_snapshot.dart';

/// Result data returned by getStorageBoxSnapshots.
class GetStorageBoxSnapshotsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetStorageBoxSnapshotsSnapshot> snapshots;
  /// ID of the Storage Box.
  final int storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxSnapshotsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [snapshots] Required.
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetStorageBoxSnapshotsResult({
    required this.id,
    required this.snapshots,
    required this.storageBoxId,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'snapshots': pulumi.Input.encodeList<GetStorageBoxSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'storageBoxId': storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotsResult(
      id: map['id'] as String,
      snapshots: pulumi.Input.decodeList<GetStorageBoxSnapshotsSnapshot>(map['snapshots']!, (value) => GetStorageBoxSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      storageBoxId: map['storageBoxId'] as int,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

