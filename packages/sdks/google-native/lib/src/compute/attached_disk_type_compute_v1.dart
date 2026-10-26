import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskTypeComputeV1 implements pulumi.PulumiEnum<String> {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskTypeComputeV1 fromValue(String value) {
    for (final item in AttachedDiskTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskTypeComputeV1 value: $value');
  }
}
