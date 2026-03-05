/// Indicates the type of the snapshot.
enum SnapshotSnapshotTypeComputeBeta {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotTypeComputeBeta(this.wireValue);
  final String wireValue;

  static SnapshotSnapshotTypeComputeBeta fromValue(String value) {
    for (final item in SnapshotSnapshotTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotTypeComputeBeta value: $value');
  }
}

