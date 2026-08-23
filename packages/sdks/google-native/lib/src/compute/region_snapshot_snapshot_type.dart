/// Indicates the type of the snapshot.
enum RegionSnapshotSnapshotType {
  archive("ARCHIVE"),
  standard("STANDARD");

  const RegionSnapshotSnapshotType(this.wireValue);
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
