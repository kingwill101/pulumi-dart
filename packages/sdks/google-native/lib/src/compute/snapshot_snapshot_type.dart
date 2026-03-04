/// Indicates the type of the snapshot.
enum SnapshotSnapshotType {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotType(this.wireValue);
  final String wireValue;

  static SnapshotSnapshotType fromValue(String value) {
    for (final item in SnapshotSnapshotType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotType value: $value');
  }
}
