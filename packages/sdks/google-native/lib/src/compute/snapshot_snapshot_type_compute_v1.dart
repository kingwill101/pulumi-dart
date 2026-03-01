/// Indicates the type of the snapshot.
enum SnapshotSnapshotTypeComputeV1 {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotTypeComputeV1(this.value);
  final String value;

  static SnapshotSnapshotTypeComputeV1 fromValue(String value) {
    for (final item in SnapshotSnapshotTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotTypeComputeV1 value: $value');
  }
}

