import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of the snapshot.
enum SnapshotSnapshotType implements pulumi.PulumiEnum<String> {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotType(this.wireValue);
  @override
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
