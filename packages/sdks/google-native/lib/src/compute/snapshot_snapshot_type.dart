/// Indicates the type of the snapshot.
enum SnapshotSnapshotType {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotType(this.value);
  final String value;

  static SnapshotSnapshotType fromValue(String value) {
    for (final item in SnapshotSnapshotType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotType value: $value');
  }
}

