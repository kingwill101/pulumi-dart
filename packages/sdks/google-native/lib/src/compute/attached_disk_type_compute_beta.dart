import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskTypeComputeBeta implements pulumi.PulumiEnum<String> {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AttachedDiskTypeComputeBeta fromValue(String value) {
    for (final item in AttachedDiskTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskTypeComputeBeta value: $value');
  }
}
