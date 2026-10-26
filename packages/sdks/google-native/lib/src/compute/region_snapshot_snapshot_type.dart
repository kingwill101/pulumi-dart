import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of the snapshot.
enum RegionSnapshotSnapshotType implements pulumi.PulumiEnum<String> {
  archive("ARCHIVE"),
  standard("STANDARD");

  const RegionSnapshotSnapshotType(this.wireValue);
  @override
  final String wireValue;

  static RegionSnapshotSnapshotType fromValue(String value) {
    for (final item in RegionSnapshotSnapshotType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSnapshotSnapshotType value: $value');
  }
}
