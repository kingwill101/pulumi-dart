import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of the snapshot.
enum SnapshotSnapshotTypeComputeBeta implements pulumi.PulumiEnum<String> {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotTypeComputeBeta(this.wireValue);
  @override
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
