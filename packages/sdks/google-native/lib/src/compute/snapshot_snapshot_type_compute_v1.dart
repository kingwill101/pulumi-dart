/// Indicates the type of the snapshot.
enum SnapshotSnapshotTypeComputeV1 {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotTypeComputeV1(this.wireValue);
  final String wireValue;

  static SnapshotSnapshotTypeComputeV1 fromValue(String value) {
    for (final item in SnapshotSnapshotTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotTypeComputeV1 value: $value');
  }
}
