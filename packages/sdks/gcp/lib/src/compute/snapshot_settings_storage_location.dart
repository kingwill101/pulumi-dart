// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_settings_storage_location_location.dart';

class SnapshotSettingsStorageLocation {
  /// When the policy is SPECIFIC_LOCATIONS, snapshots will be stored in the
  /// locations listed in this field. Keys are Cloud Storage bucket locations.
  /// Only one location can be specified.
  /// Structure is documented below.
  final pulumi.Input<List<SnapshotSettingsStorageLocationLocation>?>? locations;
  /// The chosen location policy
  /// Possible values are: `NEAREST_MULTI_REGION`, `LOCAL_REGION`, `SPECIFIC_LOCATIONS`.
  final pulumi.Input<String> policy;

  /// Creates a new [SnapshotSettingsStorageLocation].
  /// [locations] When the policy is SPECIFIC_LOCATIONS, snapshots will be stored in the
  /// [policy] The chosen location policy
  const SnapshotSettingsStorageLocation({
    this.locations,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?pulumi.Input.mapOptionalInputValue<List<SnapshotSettingsStorageLocationLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<SnapshotSettingsStorageLocationLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policy': policy,
    };
  }

  factory SnapshotSettingsStorageLocation.fromMap(Map<String, dynamic> map) {
    return SnapshotSettingsStorageLocation(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnapshotSettingsStorageLocationLocation>(guardedValue, (value) => SnapshotSettingsStorageLocationLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
