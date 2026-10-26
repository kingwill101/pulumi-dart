import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum DiskInterfaceComputeBeta implements pulumi.PulumiEnum<String> {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const DiskInterfaceComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static DiskInterfaceComputeBeta fromValue(String value) {
    for (final item in DiskInterfaceComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskInterfaceComputeBeta value: $value');
  }
}
