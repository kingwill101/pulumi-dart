import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the disk to create.
enum DiskType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  persistentHdd("PERSISTENT_HDD"),
  persistentSsd("PERSISTENT_SSD"),
  localSsd("LOCAL_SSD");

  const DiskType(this.wireValue);
  @override
  final String wireValue;

  static DiskType fromValue(String value) {
    for (final item in DiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskType value: $value');
  }
}
