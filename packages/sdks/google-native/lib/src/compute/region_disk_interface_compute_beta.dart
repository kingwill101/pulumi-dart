import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum RegionDiskInterfaceComputeBeta implements pulumi.PulumiEnum<String> {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const RegionDiskInterfaceComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RegionDiskInterfaceComputeBeta fromValue(String value) {
    for (final item in RegionDiskInterfaceComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskInterfaceComputeBeta value: $value');
  }
}
