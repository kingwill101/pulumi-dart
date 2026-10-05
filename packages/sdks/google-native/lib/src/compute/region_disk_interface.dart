import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum RegionDiskInterface implements pulumi.PulumiEnum<String> {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const RegionDiskInterface(this.wireValue);
  @override
  final String wireValue;

  static RegionDiskInterface fromValue(String value) {
    for (final item in RegionDiskInterface.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskInterface value: $value');
  }
}
