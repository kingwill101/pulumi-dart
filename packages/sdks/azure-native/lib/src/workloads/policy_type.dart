import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of backup policy type
enum PolicyType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueFull("Full"),
  valueDifferential("Differential"),
  valueLog("Log"),
  valueCopyOnlyFull("CopyOnlyFull"),
  valueIncremental("Incremental"),
  valueSnapshotFull("SnapshotFull"),
  valueSnapshotCopyOnlyFull("SnapshotCopyOnlyFull");

  const PolicyType(this.wireValue);
  @override
  final String wireValue;

  static PolicyType fromValue(String value) {
    for (final item in PolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyType value: $value');
  }
}
