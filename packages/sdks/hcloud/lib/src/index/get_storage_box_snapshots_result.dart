// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_snapshots_snapshot.dart';

/// Result data returned by getStorageBoxSnapshots.
class GetStorageBoxSnapshotsResult {
  final List<GetStorageBoxSnapshotsSnapshot>? snapshots;
  /// ID of the Storage Box.
  final int? storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxSnapshotsResult].
  /// [snapshots] Optional.
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetStorageBoxSnapshotsResult({
    this.snapshots,
    this.storageBoxId,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshots': ?(() { final guardedValue = snapshots; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStorageBoxSnapshotsSnapshot, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageBoxId': ?storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotsResult(
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStorageBoxSnapshotsSnapshot>(guardedValue, (value) => GetStorageBoxSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageBoxId: (() { final guardedValue = map['storageBoxId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
