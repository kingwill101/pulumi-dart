import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
enum AttachedDiskModeComputeV1 implements pulumi.PulumiEnum<String> {
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const AttachedDiskModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskModeComputeV1 fromValue(String value) {
    for (final item in AttachedDiskModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskModeComputeV1 value: $value');
  }
}
